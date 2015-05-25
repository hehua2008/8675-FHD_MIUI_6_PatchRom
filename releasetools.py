import common
import copy
import edify_generator

def RemoveDeviceAssert(info):
    edify = info.script
    edify.AppendExtra('ui_print("Complete ! by hehua2008...");')
    for i in xrange(len(edify.script)):
        if "ro.product" in edify.script[i]:
          edify.script[i] = '''ui_print("****************************");
ui_print("*         8675-FHD         *");
ui_print("*          MIUI 6          *");
ui_print("*       by hehua2008       *");
ui_print("****************************");'''
    return

def InstallImage(img_name, img_file, partition, info):
    common.ZipWriteStr(info.output_zip, img_name, img_file)
    info.script.AppendExtra(('package_extract_file("' + img_name + '", "/dev/block/bootdevice/by-name/' + partition + '");'))

image_partitions = {
'tz.mbn' : 'tz',
'sbl1.mbn' : 'sbl1',
'rpm.mbn' : 'rpm',
'emmc_appsboot.mbn' : 'aboot',
'emmc_appsboot.mbn' : 'abootbak',
'NON-HLOS.bin' : 'modem'
}

def FullOTA_InstallEnd(info):
    for k, v in image_partitions.iteritems():
        try:
          img_file = info.input_zip.read("RADIO/" + k)
          info.script.Print("Writing image " + k + "...")
          InstallImage(k, img_file, v, info)
        except KeyError:
          print "warning: no " + k + " image in input target_files; not flashing " + k
    RemoveDeviceAssert(info)

def IncrementalOTA_InstallEnd(info):
    for k, v in image_partitions.iteritems():
        try:
          source_file = info.source_zip.read("RADIO/" + k)
          target_file = info.target_zip.read("RADIO/" + k)
          if source_file != target_file:
            InstallImage(k, target_file, v, info)
          else:
            print k + " image unchanged; skipping"
        except KeyError:
          print "warning: " + k + " image missing from target; not flashing " + k
    RemoveDeviceAssert(info)

