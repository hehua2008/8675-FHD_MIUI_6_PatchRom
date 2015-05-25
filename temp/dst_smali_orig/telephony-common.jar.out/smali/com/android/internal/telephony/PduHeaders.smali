.class public Lcom/android/internal/telephony/PduHeaders;
.super Ljava/lang/Object;
.source "PduHeaders.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/telephony/PduHeaders$InvalidHeaderValueException;
    }
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z

.field public static final ADAPTATION_ALLOWED:I = 0xbc

.field public static final ADDITIONAL_HEADERS:I = 0xb0

.field public static final APPLIC_ID:I = 0xb7

.field public static final ATTRIBUTES:I = 0xa8

.field public static final AUX_APPLIC_ID:I = 0xb9

.field public static final BCC:I = 0x81

.field public static final CANCEL_ID:I = 0xbe

.field public static final CANCEL_STATUS:I = 0xbf

.field public static final CANCEL_STATUS_REQUEST_CORRUPTED:I = 0x81

.field public static final CANCEL_STATUS_REQUEST_SUCCESSFULLY_RECEIVED:I = 0x80

.field public static final CC:I = 0x82

.field public static final CONTENT:I = 0xae

.field public static final CONTENT_CLASS:I = 0xba

.field public static final CONTENT_CLASS_CONTENT_BASIC:I = 0x86

.field public static final CONTENT_CLASS_CONTENT_RICH:I = 0x87

.field public static final CONTENT_CLASS_IMAGE_BASIC:I = 0x81

.field public static final CONTENT_CLASS_IMAGE_RICH:I = 0x82

.field public static final CONTENT_CLASS_MEGAPIXEL:I = 0x85

.field public static final CONTENT_CLASS_TEXT:I = 0x80

.field public static final CONTENT_CLASS_VIDEO_BASIC:I = 0x83

.field public static final CONTENT_CLASS_VIDEO_RICH:I = 0x84

.field public static final CONTENT_LOCATION:I = 0x83

.field public static final CONTENT_TYPE:I = 0x84

.field public static final CURRENT_MMS_VERSION:I = 0x12

.field public static final DATE:I = 0x85

.field public static final DELIVERY_REPORT:I = 0x86

.field public static final DELIVERY_TIME:I = 0x87

.field public static final DISTRIBUTION_INDICATOR:I = 0xb1

.field public static final DRM_CONTENT:I = 0xbb

.field public static final ELEMENT_DESCRIPTOR:I = 0xb2

.field private static final END_STRING_FLAG:I = 0x0

.field public static final EXPIRY:I = 0x88

.field public static final FROM:I = 0x89

.field public static final FROM_ADDRESS_PRESENT_TOKEN:I = 0x80

.field public static final FROM_ADDRESS_PRESENT_TOKEN_STR:Ljava/lang/String; = "address-present-token"

.field public static final FROM_INSERT_ADDRESS_TOKEN:I = 0x81

.field public static final FROM_INSERT_ADDRESS_TOKEN_STR:Ljava/lang/String; = "insert-address-token"

.field private static final LENGTH_QUOTE:I = 0x1f

.field public static final LIMIT:I = 0xb3

.field private static final LOCAL_LOGV:Z = true

.field private static final LONG_INTEGER_LENGTH_MAX:I = 0x8

.field public static final MBOX_QUOTAS:I = 0xac

.field public static final MBOX_TOTALS:I = 0xaa

.field public static final MESSAGE_CLASS:I = 0x8a

.field public static final MESSAGE_CLASS_ADVERTISEMENT:I = 0x81

.field public static final MESSAGE_CLASS_ADVERTISEMENT_STR:Ljava/lang/String; = "advertisement"

.field public static final MESSAGE_CLASS_AUTO:I = 0x83

.field public static final MESSAGE_CLASS_AUTO_STR:Ljava/lang/String; = "auto"

.field public static final MESSAGE_CLASS_INFORMATIONAL:I = 0x82

.field public static final MESSAGE_CLASS_INFORMATIONAL_STR:Ljava/lang/String; = "informational"

.field public static final MESSAGE_CLASS_PERSONAL:I = 0x80

.field public static final MESSAGE_CLASS_PERSONAL_STR:Ljava/lang/String; = "personal"

.field public static final MESSAGE_COUNT:I = 0xad

.field public static final MESSAGE_ID:I = 0x8b

.field public static final MESSAGE_SIZE:I = 0x8e

.field public static final MESSAGE_TYPE:I = 0x8c

.field public static final MESSAGE_TYPE_ACKNOWLEDGE_IND:I = 0x85

.field public static final MESSAGE_TYPE_CANCEL_CONF:I = 0x97

.field public static final MESSAGE_TYPE_CANCEL_REQ:I = 0x96

.field public static final MESSAGE_TYPE_DELETE_CONF:I = 0x95

.field public static final MESSAGE_TYPE_DELETE_REQ:I = 0x94

.field public static final MESSAGE_TYPE_DELIVERY_IND:I = 0x86

.field public static final MESSAGE_TYPE_FORWARD_CONF:I = 0x8a

.field public static final MESSAGE_TYPE_FORWARD_REQ:I = 0x89

.field public static final MESSAGE_TYPE_MBOX_DELETE_CONF:I = 0x92

.field public static final MESSAGE_TYPE_MBOX_DELETE_REQ:I = 0x91

.field public static final MESSAGE_TYPE_MBOX_DESCR:I = 0x93

.field public static final MESSAGE_TYPE_MBOX_STORE_CONF:I = 0x8c

.field public static final MESSAGE_TYPE_MBOX_STORE_REQ:I = 0x8b

.field public static final MESSAGE_TYPE_MBOX_UPLOAD_CONF:I = 0x90

.field public static final MESSAGE_TYPE_MBOX_UPLOAD_REQ:I = 0x8f

.field public static final MESSAGE_TYPE_MBOX_VIEW_CONF:I = 0x8e

.field public static final MESSAGE_TYPE_MBOX_VIEW_REQ:I = 0x8d

.field public static final MESSAGE_TYPE_NOTIFICATION_IND:I = 0x82

.field public static final MESSAGE_TYPE_NOTIFYRESP_IND:I = 0x83

.field public static final MESSAGE_TYPE_READ_ORIG_IND:I = 0x88

.field public static final MESSAGE_TYPE_READ_REC_IND:I = 0x87

.field public static final MESSAGE_TYPE_RETRIEVE_CONF:I = 0x84

.field public static final MESSAGE_TYPE_SEND_CONF:I = 0x81

.field public static final MESSAGE_TYPE_SEND_REQ:I = 0x80

.field public static final MMS_VERSION:I = 0x8d

.field public static final MMS_VERSION_1_0:I = 0x10

.field public static final MMS_VERSION_1_1:I = 0x11

.field public static final MMS_VERSION_1_2:I = 0x12

.field public static final MMS_VERSION_1_3:I = 0x13

.field public static final MM_FLAGS:I = 0xa4

.field public static final MM_FLAGS_ADD_TOKEN:I = 0x80

.field public static final MM_FLAGS_FILTER_TOKEN:I = 0x82

.field public static final MM_FLAGS_REMOVE_TOKEN:I = 0x81

.field public static final MM_STATE:I = 0xa3

.field public static final MM_STATE_DRAFT:I = 0x80

.field public static final MM_STATE_FORWARDED:I = 0x84

.field public static final MM_STATE_NEW:I = 0x82

.field public static final MM_STATE_RETRIEVED:I = 0x83

.field public static final MM_STATE_SENT:I = 0x81

.field public static final PREVIOUSLY_SENT_BY:I = 0xa0

.field public static final PREVIOUSLY_SENT_DATE:I = 0xa1

.field public static final PRIORITY:I = 0x8f

.field public static final PRIORITY_HIGH:I = 0x82

.field public static final PRIORITY_LOW:I = 0x80

.field public static final PRIORITY_NORMAL:I = 0x81

.field public static final P_CHARSET:I = 0x81

.field public static final P_COMMENT:I = 0x9b

.field public static final P_CREATION_DATE:I = 0x93

.field public static final P_CT_MR_TYPE:I = 0x89

.field public static final P_DEP_COMMENT:I = 0x8c

.field public static final P_DEP_DOMAIN:I = 0x8d

.field public static final P_DEP_FILENAME:I = 0x86

.field public static final P_DEP_NAME:I = 0x85

.field public static final P_DEP_PATH:I = 0x8f

.field public static final P_DEP_START:I = 0x8a

.field public static final P_DEP_START_INFO:I = 0x8b

.field public static final P_DIFFERENCES:I = 0x87

.field public static final P_DOMAIN:I = 0x9c

.field public static final P_FILENAME:I = 0x98

.field public static final P_LEVEL:I = 0x82

.field public static final P_MAC:I = 0x92

.field public static final P_MAX_AGE:I = 0x8e

.field public static final P_MODIFICATION_DATE:I = 0x94

.field public static final P_NAME:I = 0x97

.field public static final P_PADDING:I = 0x88

.field public static final P_PATH:I = 0x9d

.field public static final P_Q:I = 0x80

.field public static final P_READ_DATE:I = 0x95

.field public static final P_SEC:I = 0x91

.field public static final P_SECURE:I = 0x90

.field public static final P_SIZE:I = 0x96

.field public static final P_START:I = 0x99

.field public static final P_START_INFO:I = 0x9a

.field public static final P_TYPE:I = 0x83

.field public static final QUOTAS:I = 0xab

.field private static final QUOTE:I = 0x7f

.field private static final QUOTED_STRING_FLAG:I = 0x22

.field public static final READ_REPLY:I = 0x90

.field public static final READ_REPORT:I = 0x90

.field public static final READ_STATUS:I = 0x9b

.field public static final READ_STATUS_READ:I = 0x80

.field public static final READ_STATUS__DELETED_WITHOUT_BEING_READ:I = 0x81

.field public static final RECOMMENDED_RETRIEVAL_MODE:I = 0xb4

.field public static final RECOMMENDED_RETRIEVAL_MODE_MANUAL:I = 0x80

.field public static final RECOMMENDED_RETRIEVAL_MODE_TEXT:I = 0xb5

.field public static final REPLACE_ID:I = 0xbd

.field public static final REPLY_APPLIC_ID:I = 0xb8

.field public static final REPLY_CHARGING:I = 0x9c

.field public static final REPLY_CHARGING_ACCEPTED:I = 0x82

.field public static final REPLY_CHARGING_ACCEPTED_TEXT_ONLY:I = 0x83

.field public static final REPLY_CHARGING_DEADLINE:I = 0x9d

.field public static final REPLY_CHARGING_ID:I = 0x9e

.field public static final REPLY_CHARGING_REQUESTED:I = 0x80

.field public static final REPLY_CHARGING_REQUESTED_TEXT_ONLY:I = 0x81

.field public static final REPLY_CHARGING_SIZE:I = 0x9f

.field public static final REPORT_ALLOWED:I = 0x91

.field public static final RESPONSE_STATUS:I = 0x92

.field public static final RESPONSE_STATUS_ERROR_CONTENT_NOT_ACCEPTED:I = 0x87

.field public static final RESPONSE_STATUS_ERROR_MESSAGE_FORMAT_CORRUPT:I = 0x83

.field public static final RESPONSE_STATUS_ERROR_MESSAGE_NOT_FOUND:I = 0x85

.field public static final RESPONSE_STATUS_ERROR_NETWORK_PROBLEM:I = 0x86

.field public static final RESPONSE_STATUS_ERROR_PERMANENT_ADDRESS_HIDING_NOT_SUPPORTED:I = 0xea

.field public static final RESPONSE_STATUS_ERROR_PERMANENT_CONTENT_NOT_ACCEPTED:I = 0xe5

.field public static final RESPONSE_STATUS_ERROR_PERMANENT_END:I = 0xff

.field public static final RESPONSE_STATUS_ERROR_PERMANENT_FAILURE:I = 0xe0

.field public static final RESPONSE_STATUS_ERROR_PERMANENT_LACK_OF_PREPAID:I = 0xeb

.field public static final RESPONSE_STATUS_ERROR_PERMANENT_MESSAGE_FORMAT_CORRUPT:I = 0xe2

.field public static final RESPONSE_STATUS_ERROR_PERMANENT_MESSAGE_NOT_FOUND:I = 0xe4

.field public static final RESPONSE_STATUS_ERROR_PERMANENT_REPLY_CHARGING_FORWARDING_DENIED:I = 0xe8

.field public static final RESPONSE_STATUS_ERROR_PERMANENT_REPLY_CHARGING_LIMITATIONS_NOT_MET:I = 0xe6

.field public static final RESPONSE_STATUS_ERROR_PERMANENT_REPLY_CHARGING_NOT_SUPPORTED:I = 0xe9

.field public static final RESPONSE_STATUS_ERROR_PERMANENT_REPLY_CHARGING_REQUEST_NOT_ACCEPTED:I = 0xe6

.field public static final RESPONSE_STATUS_ERROR_PERMANENT_SENDING_ADDRESS_UNRESOLVED:I = 0xe3

.field public static final RESPONSE_STATUS_ERROR_PERMANENT_SERVICE_DENIED:I = 0xe1

.field public static final RESPONSE_STATUS_ERROR_SENDING_ADDRESS_UNRESOLVED:I = 0x84

.field public static final RESPONSE_STATUS_ERROR_SERVICE_DENIED:I = 0x82

.field public static final RESPONSE_STATUS_ERROR_TRANSIENT_FAILURE:I = 0xc0

.field public static final RESPONSE_STATUS_ERROR_TRANSIENT_MESSAGE_NOT_FOUND:I = 0xc2

.field public static final RESPONSE_STATUS_ERROR_TRANSIENT_NETWORK_PROBLEM:I = 0xc3

.field public static final RESPONSE_STATUS_ERROR_TRANSIENT_PARTIAL_SUCCESS:I = 0xc4

.field public static final RESPONSE_STATUS_ERROR_TRANSIENT_SENDNG_ADDRESS_UNRESOLVED:I = 0xc1

.field public static final RESPONSE_STATUS_ERROR_UNSPECIFIED:I = 0x81

.field public static final RESPONSE_STATUS_ERROR_UNSUPPORTED_MESSAGE:I = 0x88

.field public static final RESPONSE_STATUS_OK:I = 0x80

.field public static final RESPONSE_TEXT:I = 0x93

.field public static final RETRIEVE_STATUS:I = 0x99

.field public static final RETRIEVE_STATUS_ERROR_END:I = 0xff

.field public static final RETRIEVE_STATUS_ERROR_PERMANENT_CONTENT_UNSUPPORTED:I = 0xe3

.field public static final RETRIEVE_STATUS_ERROR_PERMANENT_FAILURE:I = 0xe0

.field public static final RETRIEVE_STATUS_ERROR_PERMANENT_MESSAGE_NOT_FOUND:I = 0xe2

.field public static final RETRIEVE_STATUS_ERROR_PERMANENT_SERVICE_DENIED:I = 0xe1

.field public static final RETRIEVE_STATUS_ERROR_TRANSIENT_FAILURE:I = 0xc0

.field public static final RETRIEVE_STATUS_ERROR_TRANSIENT_MESSAGE_NOT_FOUND:I = 0xc1

.field public static final RETRIEVE_STATUS_ERROR_TRANSIENT_NETWORK_PROBLEM:I = 0xc2

.field public static final RETRIEVE_STATUS_OK:I = 0x80

.field public static final RETRIEVE_TEXT:I = 0x9a

.field public static final SENDER_VISIBILITY:I = 0x94

.field public static final SENDER_VISIBILITY_HIDE:I = 0x80

.field public static final SENDER_VISIBILITY_SHOW:I = 0x81

.field private static final SHORT_INTEGER_MAX:I = 0x7f

.field private static final SHORT_LENGTH_MAX:I = 0x1e

.field public static final START:I = 0xaf

.field public static final STATUS:I = 0x95

.field public static final STATUS_DEFERRED:I = 0x83

.field public static final STATUS_EXPIRED:I = 0x80

.field public static final STATUS_FORWARDED:I = 0x86

.field public static final STATUS_INDETERMINATE:I = 0x85

.field public static final STATUS_REJECTED:I = 0x82

.field public static final STATUS_RETRIEVED:I = 0x81

.field public static final STATUS_TEXT:I = 0xb6

.field public static final STATUS_UNREACHABLE:I = 0x87

.field public static final STATUS_UNRECOGNIZED:I = 0x84

.field public static final STORE:I = 0xa2

.field public static final STORED:I = 0xa7

.field public static final STORE_STATUS:I = 0xa5

.field public static final STORE_STATUS_ERROR_END:I = 0xff

.field public static final STORE_STATUS_ERROR_PERMANENT_FAILURE:I = 0xe0

.field public static final STORE_STATUS_ERROR_PERMANENT_MESSAGE_FORMAT_CORRUPT:I = 0xe2

.field public static final STORE_STATUS_ERROR_PERMANENT_MESSAGE_NOT_FOUND:I = 0xe3

.field public static final STORE_STATUS_ERROR_PERMANENT_MMBOX_FULL:I = 0xe4

.field public static final STORE_STATUS_ERROR_PERMANENT_SERVICE_DENIED:I = 0xe1

.field public static final STORE_STATUS_ERROR_TRANSIENT_FAILURE:I = 0xc0

.field public static final STORE_STATUS_ERROR_TRANSIENT_NETWORK_PROBLEM:I = 0xc1

.field public static final STORE_STATUS_SUCCESS:I = 0x80

.field public static final STORE_STATUS_TEXT:I = 0xa6

.field public static final SUBJECT:I = 0x96

.field private static final TAG:Ljava/lang/String; = "PduHeaders"

.field private static final TEXT_MAX:I = 0x7f

.field private static final TEXT_MIN:I = 0x20

.field public static final TO:I = 0x97

.field public static final TOTALS:I = 0xa9

.field public static final TRANSACTION_ID:I = 0x98

.field private static final TYPE_QUOTED_STRING:I = 0x1

.field private static final TYPE_TEXT_STRING:I = 0x0

.field private static final TYPE_TOKEN_STRING:I = 0x2

.field public static final VALUE_ABSOLUTE_TOKEN:I = 0x80

.field public static final VALUE_NO:I = 0x81

.field public static final VALUE_RELATIVE_TOKEN:I = 0x81

.field public static final VALUE_YES:I = 0x80

.field static final contentTypes:[Ljava/lang/String;


# instance fields
.field private mHeaderMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private mStartParam:[B

.field private mTypeParam:[B


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    const-class v0, Lcom/android/internal/telephony/PduHeaders;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    move v0, v1

    :goto_0
    sput-boolean v0, Lcom/android/internal/telephony/PduHeaders;->$assertionsDisabled:Z

    const/16 v0, 0x53

    new-array v0, v0, [Ljava/lang/String;

    const-string v3, "*/*"

    aput-object v3, v0, v2

    const-string v2, "text/*"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "text/html"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "text/plain"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "text/x-hdml"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "text/x-ttml"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "text/x-vCalendar"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "text/x-vCard"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "text/vnd.wap.wml"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "text/vnd.wap.wmlscript"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string v2, "text/vnd.wap.wta-event"

    aput-object v2, v0, v1

    const/16 v1, 0xb

    const-string v2, "multipart/*"

    aput-object v2, v0, v1

    const/16 v1, 0xc

    const-string v2, "multipart/mixed"

    aput-object v2, v0, v1

    const/16 v1, 0xd

    const-string v2, "multipart/form-data"

    aput-object v2, v0, v1

    const/16 v1, 0xe

    const-string v2, "multipart/byterantes"

    aput-object v2, v0, v1

    const/16 v1, 0xf

    const-string v2, "multipart/alternative"

    aput-object v2, v0, v1

    const/16 v1, 0x10

    const-string v2, "application/*"

    aput-object v2, v0, v1

    const/16 v1, 0x11

    const-string v2, "application/java-vm"

    aput-object v2, v0, v1

    const/16 v1, 0x12

    const-string v2, "application/x-www-form-urlencoded"

    aput-object v2, v0, v1

    const/16 v1, 0x13

    const-string v2, "application/x-hdmlc"

    aput-object v2, v0, v1

    const/16 v1, 0x14

    const-string v2, "application/vnd.wap.wmlc"

    aput-object v2, v0, v1

    const/16 v1, 0x15

    const-string v2, "application/vnd.wap.wmlscriptc"

    aput-object v2, v0, v1

    const/16 v1, 0x16

    const-string v2, "application/vnd.wap.wta-eventc"

    aput-object v2, v0, v1

    const/16 v1, 0x17

    const-string v2, "application/vnd.wap.uaprof"

    aput-object v2, v0, v1

    const/16 v1, 0x18

    const-string v2, "application/vnd.wap.wtls-ca-certificate"

    aput-object v2, v0, v1

    const/16 v1, 0x19

    const-string v2, "application/vnd.wap.wtls-user-certificate"

    aput-object v2, v0, v1

    const/16 v1, 0x1a

    const-string v2, "application/x-x509-ca-cert"

    aput-object v2, v0, v1

    const/16 v1, 0x1b

    const-string v2, "application/x-x509-user-cert"

    aput-object v2, v0, v1

    const/16 v1, 0x1c

    const-string v2, "image/*"

    aput-object v2, v0, v1

    const/16 v1, 0x1d

    const-string v2, "image/gif"

    aput-object v2, v0, v1

    const/16 v1, 0x1e

    const-string v2, "image/jpeg"

    aput-object v2, v0, v1

    const/16 v1, 0x1f

    const-string v2, "image/tiff"

    aput-object v2, v0, v1

    const/16 v1, 0x20

    const-string v2, "image/png"

    aput-object v2, v0, v1

    const/16 v1, 0x21

    const-string v2, "image/vnd.wap.wbmp"

    aput-object v2, v0, v1

    const/16 v1, 0x22

    const-string v2, "application/vnd.wap.multipart.*"

    aput-object v2, v0, v1

    const/16 v1, 0x23

    const-string v2, "application/vnd.wap.multipart.mixed"

    aput-object v2, v0, v1

    const/16 v1, 0x24

    const-string v2, "application/vnd.wap.multipart.form-data"

    aput-object v2, v0, v1

    const/16 v1, 0x25

    const-string v2, "application/vnd.wap.multipart.byteranges"

    aput-object v2, v0, v1

    const/16 v1, 0x26

    const-string v2, "application/vnd.wap.multipart.alternative"

    aput-object v2, v0, v1

    const/16 v1, 0x27

    const-string v2, "application/xml"

    aput-object v2, v0, v1

    const/16 v1, 0x28

    const-string v2, "text/xml"

    aput-object v2, v0, v1

    const/16 v1, 0x29

    const-string v2, "application/vnd.wap.wbxml"

    aput-object v2, v0, v1

    const/16 v1, 0x2a

    const-string v2, "application/x-x968-cross-cert"

    aput-object v2, v0, v1

    const/16 v1, 0x2b

    const-string v2, "application/x-x968-ca-cert"

    aput-object v2, v0, v1

    const/16 v1, 0x2c

    const-string v2, "application/x-x968-user-cert"

    aput-object v2, v0, v1

    const/16 v1, 0x2d

    const-string v2, "text/vnd.wap.si"

    aput-object v2, v0, v1

    const/16 v1, 0x2e

    const-string v2, "application/vnd.wap.sic"

    aput-object v2, v0, v1

    const/16 v1, 0x2f

    const-string v2, "text/vnd.wap.sl"

    aput-object v2, v0, v1

    const/16 v1, 0x30

    const-string v2, "application/vnd.wap.slc"

    aput-object v2, v0, v1

    const/16 v1, 0x31

    const-string v2, "text/vnd.wap.co"

    aput-object v2, v0, v1

    const/16 v1, 0x32

    const-string v2, "application/vnd.wap.coc"

    aput-object v2, v0, v1

    const/16 v1, 0x33

    const-string v2, "application/vnd.wap.multipart.related"

    aput-object v2, v0, v1

    const/16 v1, 0x34

    const-string v2, "application/vnd.wap.sia"

    aput-object v2, v0, v1

    const/16 v1, 0x35

    const-string v2, "text/vnd.wap.connectivity-xml"

    aput-object v2, v0, v1

    const/16 v1, 0x36

    const-string v2, "application/vnd.wap.connectivity-wbxml"

    aput-object v2, v0, v1

    const/16 v1, 0x37

    const-string v2, "application/pkcs7-mime"

    aput-object v2, v0, v1

    const/16 v1, 0x38

    const-string v2, "application/vnd.wap.hashed-certificate"

    aput-object v2, v0, v1

    const/16 v1, 0x39

    const-string v2, "application/vnd.wap.signed-certificate"

    aput-object v2, v0, v1

    const/16 v1, 0x3a

    const-string v2, "application/vnd.wap.cert-response"

    aput-object v2, v0, v1

    const/16 v1, 0x3b

    const-string v2, "application/xhtml+xml"

    aput-object v2, v0, v1

    const/16 v1, 0x3c

    const-string v2, "application/wml+xml"

    aput-object v2, v0, v1

    const/16 v1, 0x3d

    const-string v2, "text/css"

    aput-object v2, v0, v1

    const/16 v1, 0x3e

    const-string v2, "application/vnd.wap.mms-message"

    aput-object v2, v0, v1

    const/16 v1, 0x3f

    const-string v2, "application/vnd.wap.rollover-certificate"

    aput-object v2, v0, v1

    const/16 v1, 0x40

    const-string v2, "application/vnd.wap.locc+wbxml"

    aput-object v2, v0, v1

    const/16 v1, 0x41

    const-string v2, "application/vnd.wap.loc+xml"

    aput-object v2, v0, v1

    const/16 v1, 0x42

    const-string v2, "application/vnd.syncml.dm+wbxml"

    aput-object v2, v0, v1

    const/16 v1, 0x43

    const-string v2, "application/vnd.syncml.dm+xml"

    aput-object v2, v0, v1

    const/16 v1, 0x44

    const-string v2, "application/vnd.syncml.notification"

    aput-object v2, v0, v1

    const/16 v1, 0x45

    const-string v2, "application/vnd.wap.xhtml+xml"

    aput-object v2, v0, v1

    const/16 v1, 0x46

    const-string v2, "application/vnd.wv.csp.cir"

    aput-object v2, v0, v1

    const/16 v1, 0x47

    const-string v2, "application/vnd.oma.dd+xml"

    aput-object v2, v0, v1

    const/16 v1, 0x48

    const-string v2, "application/vnd.oma.drm.message"

    aput-object v2, v0, v1

    const/16 v1, 0x49

    const-string v2, "application/vnd.oma.drm.content"

    aput-object v2, v0, v1

    const/16 v1, 0x4a

    const-string v2, "application/vnd.oma.drm.rights+xml"

    aput-object v2, v0, v1

    const/16 v1, 0x4b

    const-string v2, "application/vnd.oma.drm.rights+wbxml"

    aput-object v2, v0, v1

    const/16 v1, 0x4c

    const-string v2, "application/vnd.wv.csp+xml"

    aput-object v2, v0, v1

    const/16 v1, 0x4d

    const-string v2, "application/vnd.wv.csp+wbxml"

    aput-object v2, v0, v1

    const/16 v1, 0x4e

    const-string v2, "application/vnd.syncml.ds.notification"

    aput-object v2, v0, v1

    const/16 v1, 0x4f

    const-string v2, "audio/*"

    aput-object v2, v0, v1

    const/16 v1, 0x50

    const-string v2, "video/*"

    aput-object v2, v0, v1

    const/16 v1, 0x51

    const-string v2, "application/vnd.oma.dd2+xml"

    aput-object v2, v0, v1

    const/16 v1, 0x52

    const-string v2, "application/mikey"

    aput-object v2, v0, v1

    sput-object v0, Lcom/android/internal/telephony/PduHeaders;->contentTypes:[Ljava/lang/String;

    return-void

    :cond_0
    move v0, v2

    goto/16 :goto_0
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/internal/telephony/PduHeaders;->mTypeParam:[B

    iput-object v0, p0, Lcom/android/internal/telephony/PduHeaders;->mStartParam:[B

    iput-object v0, p0, Lcom/android/internal/telephony/PduHeaders;->mHeaderMap:Ljava/util/HashMap;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/internal/telephony/PduHeaders;->mHeaderMap:Ljava/util/HashMap;

    return-void
.end method

.method private static extractByteValue(Ljava/io/ByteArrayInputStream;)I
    .locals 2
    .param p0, "pduDataStream"    # Ljava/io/ByteArrayInputStream;

    .prologue
    sget-boolean v1, Lcom/android/internal/telephony/PduHeaders;->$assertionsDisabled:Z

    if-nez v1, :cond_0

    if-nez p0, :cond_0

    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1}, Ljava/lang/AssertionError;-><init>()V

    throw v1

    :cond_0
    invoke-virtual {p0}, Ljava/io/ByteArrayInputStream;->read()I

    move-result v0

    .local v0, "temp":I
    sget-boolean v1, Lcom/android/internal/telephony/PduHeaders;->$assertionsDisabled:Z

    if-nez v1, :cond_1

    const/4 v1, -0x1

    if-ne v1, v0, :cond_1

    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1}, Ljava/lang/AssertionError;-><init>()V

    throw v1

    :cond_1
    and-int/lit16 v1, v0, 0xff

    return v1
.end method

.method private static getWapString(Ljava/io/ByteArrayInputStream;I)[B
    .locals 4
    .param p0, "pduDataStream"    # Ljava/io/ByteArrayInputStream;
    .param p1, "stringType"    # I

    .prologue
    const/4 v3, -0x1

    sget-boolean v2, Lcom/android/internal/telephony/PduHeaders;->$assertionsDisabled:Z

    if-nez v2, :cond_0

    if-nez p0, :cond_0

    new-instance v2, Ljava/lang/AssertionError;

    invoke-direct {v2}, Ljava/lang/AssertionError;-><init>()V

    throw v2

    :cond_0
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .local v0, "out":Ljava/io/ByteArrayOutputStream;
    invoke-virtual {p0}, Ljava/io/ByteArrayInputStream;->read()I

    move-result v1

    .local v1, "temp":I
    sget-boolean v2, Lcom/android/internal/telephony/PduHeaders;->$assertionsDisabled:Z

    if-nez v2, :cond_1

    if-ne v3, v1, :cond_1

    new-instance v2, Ljava/lang/AssertionError;

    invoke-direct {v2}, Ljava/lang/AssertionError;-><init>()V

    throw v2

    :cond_1
    if-eq v3, v1, :cond_4

    if-eqz v1, :cond_4

    const/4 v2, 0x2

    if-ne p1, v2, :cond_3

    invoke-static {v1}, Lcom/android/internal/telephony/PduHeaders;->isTokenCharacter(I)Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-virtual {v0, v1}, Ljava/io/ByteArrayOutputStream;->write(I)V

    :cond_2
    :goto_0
    invoke-virtual {p0}, Ljava/io/ByteArrayInputStream;->read()I

    move-result v1

    sget-boolean v2, Lcom/android/internal/telephony/PduHeaders;->$assertionsDisabled:Z

    if-nez v2, :cond_1

    if-ne v3, v1, :cond_1

    new-instance v2, Ljava/lang/AssertionError;

    invoke-direct {v2}, Ljava/lang/AssertionError;-><init>()V

    throw v2

    :cond_3
    invoke-static {v1}, Lcom/android/internal/telephony/PduHeaders;->isText(I)Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-virtual {v0, v1}, Ljava/io/ByteArrayOutputStream;->write(I)V

    goto :goto_0

    :cond_4
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->size()I

    move-result v2

    if-lez v2, :cond_5

    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v2

    :goto_1
    return-object v2

    :cond_5
    const/4 v2, 0x0

    goto :goto_1
.end method

.method private static isText(I)Z
    .locals 2
    .param p0, "ch"    # I

    .prologue
    const/4 v0, 0x1

    const/16 v1, 0x20

    if-lt p0, v1, :cond_0

    const/16 v1, 0x7e

    if-le p0, v1, :cond_1

    :cond_0
    const/16 v1, 0x80

    if-lt p0, v1, :cond_2

    const/16 v1, 0xff

    if-gt p0, v1, :cond_2

    :cond_1
    :goto_0
    :pswitch_0
    return v0

    :cond_2
    packed-switch p0, :pswitch_data_0

    :pswitch_1
    const/4 v0, 0x0

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x9
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private static isTokenCharacter(I)Z
    .locals 2
    .param p0, "ch"    # I

    .prologue
    const/4 v0, 0x0

    const/16 v1, 0x21

    if-lt p0, v1, :cond_0

    const/16 v1, 0x7e

    if-le p0, v1, :cond_1

    :cond_0
    :goto_0
    :sswitch_0
    return v0

    :cond_1
    sparse-switch p0, :sswitch_data_0

    const/4 v0, 0x1

    goto :goto_0

    nop

    :sswitch_data_0
    .sparse-switch
        0x22 -> :sswitch_0
        0x28 -> :sswitch_0
        0x29 -> :sswitch_0
        0x2c -> :sswitch_0
        0x2f -> :sswitch_0
        0x3a -> :sswitch_0
        0x3b -> :sswitch_0
        0x3c -> :sswitch_0
        0x3d -> :sswitch_0
        0x3e -> :sswitch_0
        0x3f -> :sswitch_0
        0x40 -> :sswitch_0
        0x5b -> :sswitch_0
        0x5c -> :sswitch_0
        0x5d -> :sswitch_0
        0x7b -> :sswitch_0
        0x7d -> :sswitch_0
    .end sparse-switch
.end method

.method private static parseContentType(Ljava/io/ByteArrayInputStream;Ljava/util/HashMap;)[B
    .locals 11
    .param p0, "pduDataStream"    # Ljava/io/ByteArrayInputStream;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/ByteArrayInputStream;",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Object;",
            ">;)[B"
        }
    .end annotation

    .prologue
    .local p1, "map":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/Integer;Ljava/lang/Object;>;"
    sget-boolean v9, Lcom/android/internal/telephony/PduHeaders;->$assertionsDisabled:Z

    if-nez v9, :cond_0

    if-nez p0, :cond_0

    new-instance v9, Ljava/lang/AssertionError;

    invoke-direct {v9}, Ljava/lang/AssertionError;-><init>()V

    throw v9

    :cond_0
    const/4 v0, 0x0

    .local v0, "contentType":[B
    const/4 v9, 0x1

    invoke-virtual {p0, v9}, Ljava/io/ByteArrayInputStream;->mark(I)V

    invoke-virtual {p0}, Ljava/io/ByteArrayInputStream;->read()I

    move-result v8

    .local v8, "temp":I
    sget-boolean v9, Lcom/android/internal/telephony/PduHeaders;->$assertionsDisabled:Z

    if-nez v9, :cond_1

    const/4 v9, -0x1

    if-ne v9, v8, :cond_1

    new-instance v9, Ljava/lang/AssertionError;

    invoke-direct {v9}, Ljava/lang/AssertionError;-><init>()V

    throw v9

    :cond_1
    invoke-virtual {p0}, Ljava/io/ByteArrayInputStream;->reset()V

    and-int/lit16 v1, v8, 0xff

    .local v1, "cur":I
    const/16 v9, 0x20

    if-ge v1, v9, :cond_7

    invoke-static {p0}, Lcom/android/internal/telephony/PduHeaders;->parseValueLength(Ljava/io/ByteArrayInputStream;)I

    move-result v5

    .local v5, "length":I
    invoke-virtual {p0}, Ljava/io/ByteArrayInputStream;->available()I

    move-result v7

    .local v7, "startPos":I
    const/4 v9, 0x1

    invoke-virtual {p0, v9}, Ljava/io/ByteArrayInputStream;->mark(I)V

    invoke-virtual {p0}, Ljava/io/ByteArrayInputStream;->read()I

    move-result v8

    sget-boolean v9, Lcom/android/internal/telephony/PduHeaders;->$assertionsDisabled:Z

    if-nez v9, :cond_2

    const/4 v9, -0x1

    if-ne v9, v8, :cond_2

    new-instance v9, Ljava/lang/AssertionError;

    invoke-direct {v9}, Ljava/lang/AssertionError;-><init>()V

    throw v9

    :cond_2
    invoke-virtual {p0}, Ljava/io/ByteArrayInputStream;->reset()V

    and-int/lit16 v3, v8, 0xff

    .local v3, "first":I
    const/16 v9, 0x20

    if-lt v3, v9, :cond_4

    const/16 v9, 0x7f

    if-gt v3, v9, :cond_4

    const/4 v9, 0x0

    invoke-static {p0, v9}, Lcom/android/internal/telephony/PduHeaders;->parseWapString(Ljava/io/ByteArrayInputStream;I)[B

    move-result-object v0

    :goto_0
    invoke-virtual {p0}, Ljava/io/ByteArrayInputStream;->available()I

    move-result v2

    .local v2, "endPos":I
    sub-int v9, v7, v2

    sub-int v6, v5, v9

    .local v6, "parameterLen":I
    if-lez v6, :cond_3

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-static {p0, p1, v9}, Lcom/android/internal/telephony/PduHeaders;->parseContentTypeParams(Ljava/io/ByteArrayInputStream;Ljava/util/HashMap;Ljava/lang/Integer;)V

    :cond_3
    if-gez v6, :cond_8

    const-string v9, "PduHeaders"

    const-string v10, "Corrupt MMS message"

    invoke-static {v9, v10}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v9, Lcom/android/internal/telephony/PduHeaders;->contentTypes:[Ljava/lang/String;

    const/4 v10, 0x0

    aget-object v9, v9, v10

    invoke-virtual {v9}, Ljava/lang/String;->getBytes()[B

    move-result-object v9

    .end local v2    # "endPos":I
    .end local v3    # "first":I
    .end local v5    # "length":I
    .end local v6    # "parameterLen":I
    .end local v7    # "startPos":I
    :goto_1
    return-object v9

    .restart local v3    # "first":I
    .restart local v5    # "length":I
    .restart local v7    # "startPos":I
    :cond_4
    const/16 v9, 0x7f

    if-le v3, v9, :cond_6

    invoke-static {p0}, Lcom/android/internal/telephony/PduHeaders;->parseShortInteger(Ljava/io/ByteArrayInputStream;)I

    move-result v4

    .local v4, "index":I
    sget-object v9, Lcom/android/internal/telephony/PduHeaders;->contentTypes:[Ljava/lang/String;

    array-length v9, v9

    if-ge v4, v9, :cond_5

    sget-object v9, Lcom/android/internal/telephony/PduHeaders;->contentTypes:[Ljava/lang/String;

    aget-object v9, v9, v4

    invoke-virtual {v9}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    goto :goto_0

    :cond_5
    invoke-virtual {p0}, Ljava/io/ByteArrayInputStream;->reset()V

    const/4 v9, 0x0

    invoke-static {p0, v9}, Lcom/android/internal/telephony/PduHeaders;->parseWapString(Ljava/io/ByteArrayInputStream;I)[B

    move-result-object v0

    goto :goto_0

    .end local v4    # "index":I
    :cond_6
    const-string v9, "PduHeaders"

    const-string v10, "Corrupt content-type"

    invoke-static {v9, v10}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v9, Lcom/android/internal/telephony/PduHeaders;->contentTypes:[Ljava/lang/String;

    const/4 v10, 0x0

    aget-object v9, v9, v10

    invoke-virtual {v9}, Ljava/lang/String;->getBytes()[B

    move-result-object v9

    goto :goto_1

    .end local v3    # "first":I
    .end local v5    # "length":I
    .end local v7    # "startPos":I
    :cond_7
    const/16 v9, 0x7f

    if-gt v1, v9, :cond_9

    const/4 v9, 0x0

    invoke-static {p0, v9}, Lcom/android/internal/telephony/PduHeaders;->parseWapString(Ljava/io/ByteArrayInputStream;I)[B

    move-result-object v0

    :cond_8
    :goto_2
    move-object v9, v0

    goto :goto_1

    :cond_9
    sget-object v9, Lcom/android/internal/telephony/PduHeaders;->contentTypes:[Ljava/lang/String;

    invoke-static {p0}, Lcom/android/internal/telephony/PduHeaders;->parseShortInteger(Ljava/io/ByteArrayInputStream;)I

    move-result v10

    aget-object v9, v9, v10

    invoke-virtual {v9}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    goto :goto_2
.end method

.method private static parseContentTypeParams(Ljava/io/ByteArrayInputStream;Ljava/util/HashMap;Ljava/lang/Integer;)V
    .locals 19
    .param p0, "pduDataStream"    # Ljava/io/ByteArrayInputStream;
    .param p2, "length"    # Ljava/lang/Integer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/ByteArrayInputStream;",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Object;",
            ">;",
            "Ljava/lang/Integer;",
            ")V"
        }
    .end annotation

    .prologue
    .local p1, "map":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/Integer;Ljava/lang/Object;>;"
    sget-boolean v17, Lcom/android/internal/telephony/PduHeaders;->$assertionsDisabled:Z

    if-nez v17, :cond_0

    if-nez p0, :cond_0

    new-instance v17, Ljava/lang/AssertionError;

    invoke-direct/range {v17 .. v17}, Ljava/lang/AssertionError;-><init>()V

    throw v17

    :cond_0
    sget-boolean v17, Lcom/android/internal/telephony/PduHeaders;->$assertionsDisabled:Z

    if-nez v17, :cond_1

    invoke-virtual/range {p2 .. p2}, Ljava/lang/Integer;->intValue()I

    move-result v17

    if-gtz v17, :cond_1

    new-instance v17, Ljava/lang/AssertionError;

    invoke-direct/range {v17 .. v17}, Ljava/lang/AssertionError;-><init>()V

    throw v17

    :cond_1
    invoke-virtual/range {p0 .. p0}, Ljava/io/ByteArrayInputStream;->available()I

    move-result v14

    .local v14, "startPos":I
    const/4 v15, 0x0

    .local v15, "tempPos":I
    invoke-virtual/range {p2 .. p2}, Ljava/lang/Integer;->intValue()I

    move-result v10

    .local v10, "lastLen":I
    :goto_0
    if-lez v10, :cond_c

    invoke-virtual/range {p0 .. p0}, Ljava/io/ByteArrayInputStream;->read()I

    move-result v12

    .local v12, "param":I
    sget-boolean v17, Lcom/android/internal/telephony/PduHeaders;->$assertionsDisabled:Z

    if-nez v17, :cond_2

    const/16 v17, -0x1

    move/from16 v0, v17

    if-ne v0, v12, :cond_2

    new-instance v17, Ljava/lang/AssertionError;

    invoke-direct/range {v17 .. v17}, Ljava/lang/AssertionError;-><init>()V

    throw v17

    :cond_2
    add-int/lit8 v10, v10, -0x1

    sparse-switch v12, :sswitch_data_0

    const-string v17, "PduHeaders"

    const-string v18, "Not supported Content-Type parameter"

    invoke-static/range {v17 .. v18}, Landroid/telephony/Rlog;->v(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v17, -0x1

    move-object/from16 v0, p0

    invoke-static {v0, v10}, Lcom/android/internal/telephony/PduHeaders;->skipWapValue(Ljava/io/ByteArrayInputStream;I)I

    move-result v18

    move/from16 v0, v17

    move/from16 v1, v18

    if-ne v0, v1, :cond_b

    const-string v17, "PduHeaders"

    const-string v18, "Corrupt Content-Type"

    invoke-static/range {v17 .. v18}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :sswitch_0
    const/16 v17, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/io/ByteArrayInputStream;->mark(I)V

    invoke-static/range {p0 .. p0}, Lcom/android/internal/telephony/PduHeaders;->extractByteValue(Ljava/io/ByteArrayInputStream;)I

    move-result v7

    .local v7, "first":I
    invoke-virtual/range {p0 .. p0}, Ljava/io/ByteArrayInputStream;->reset()V

    const/16 v17, 0x7f

    move/from16 v0, v17

    if-le v7, v0, :cond_4

    invoke-static/range {p0 .. p0}, Lcom/android/internal/telephony/PduHeaders;->parseShortInteger(Ljava/io/ByteArrayInputStream;)I

    move-result v9

    .local v9, "index":I
    sget-object v17, Lcom/android/internal/telephony/PduHeaders;->contentTypes:[Ljava/lang/String;

    move-object/from16 v0, v17

    array-length v0, v0

    move/from16 v17, v0

    move/from16 v0, v17

    if-ge v9, v0, :cond_3

    sget-object v17, Lcom/android/internal/telephony/PduHeaders;->contentTypes:[Ljava/lang/String;

    aget-object v17, v17, v9

    invoke-virtual/range {v17 .. v17}, Ljava/lang/String;->getBytes()[B

    move-result-object v16

    .local v16, "type":[B
    const/16 v17, 0x83

    invoke-static/range {v17 .. v17}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v17

    move-object/from16 v0, p1

    move-object/from16 v1, v17

    move-object/from16 v2, v16

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .end local v9    # "index":I
    .end local v16    # "type":[B
    :cond_3
    :goto_1
    invoke-virtual/range {p0 .. p0}, Ljava/io/ByteArrayInputStream;->available()I

    move-result v15

    invoke-virtual/range {p2 .. p2}, Ljava/lang/Integer;->intValue()I

    move-result v17

    sub-int v18, v14, v15

    sub-int v10, v17, v18

    goto :goto_0

    :cond_4
    const/16 v17, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-static {v0, v1}, Lcom/android/internal/telephony/PduHeaders;->parseWapString(Ljava/io/ByteArrayInputStream;I)[B

    move-result-object v16

    .restart local v16    # "type":[B
    if-eqz v16, :cond_3

    if-eqz p1, :cond_3

    const/16 v17, 0x83

    invoke-static/range {v17 .. v17}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v17

    move-object/from16 v0, p1

    move-object/from16 v1, v17

    move-object/from16 v2, v16

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .end local v7    # "first":I
    .end local v16    # "type":[B
    :sswitch_1
    const/16 v17, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-static {v0, v1}, Lcom/android/internal/telephony/PduHeaders;->parseWapString(Ljava/io/ByteArrayInputStream;I)[B

    move-result-object v13

    .local v13, "start":[B
    if-eqz v13, :cond_5

    if-eqz p1, :cond_5

    const/16 v17, 0x99

    invoke-static/range {v17 .. v17}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v17

    move-object/from16 v0, p1

    move-object/from16 v1, v17

    invoke-virtual {v0, v1, v13}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_5
    invoke-virtual/range {p0 .. p0}, Ljava/io/ByteArrayInputStream;->available()I

    move-result v15

    invoke-virtual/range {p2 .. p2}, Ljava/lang/Integer;->intValue()I

    move-result v17

    sub-int v18, v14, v15

    sub-int v10, v17, v18

    goto/16 :goto_0

    .end local v13    # "start":[B
    :sswitch_2
    const/16 v17, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/io/ByteArrayInputStream;->mark(I)V

    invoke-static/range {p0 .. p0}, Lcom/android/internal/telephony/PduHeaders;->extractByteValue(Ljava/io/ByteArrayInputStream;)I

    move-result v8

    .local v8, "firstValue":I
    invoke-virtual/range {p0 .. p0}, Ljava/io/ByteArrayInputStream;->reset()V

    const/16 v17, 0x20

    move/from16 v0, v17

    if-le v8, v0, :cond_6

    const/16 v17, 0x7f

    move/from16 v0, v17

    if-lt v8, v0, :cond_7

    :cond_6
    if-nez v8, :cond_9

    :cond_7
    const/16 v17, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-static {v0, v1}, Lcom/android/internal/telephony/PduHeaders;->parseWapString(Ljava/io/ByteArrayInputStream;I)[B

    move-result-object v5

    .local v5, "charsetStr":[B
    :try_start_0
    new-instance v17, Ljava/lang/String;

    move-object/from16 v0, v17

    invoke-direct {v0, v5}, Ljava/lang/String;-><init>([B)V

    invoke-static/range {v17 .. v17}, Lcom/android/internal/telephony/CharacterSets;->getMibEnumValue(Ljava/lang/String;)I

    move-result v4

    .local v4, "charsetInt":I
    const/16 v17, 0x81

    invoke-static/range {v17 .. v17}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v17

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v18

    move-object/from16 v0, p1

    move-object/from16 v1, v17

    move-object/from16 v2, v18

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    .end local v4    # "charsetInt":I
    .end local v5    # "charsetStr":[B
    :cond_8
    :goto_2
    invoke-virtual/range {p0 .. p0}, Ljava/io/ByteArrayInputStream;->available()I

    move-result v15

    invoke-virtual/range {p2 .. p2}, Ljava/lang/Integer;->intValue()I

    move-result v17

    sub-int v18, v14, v15

    sub-int v10, v17, v18

    goto/16 :goto_0

    .restart local v5    # "charsetStr":[B
    :catch_0
    move-exception v6

    .local v6, "e":Ljava/io/UnsupportedEncodingException;
    const-string v17, "PduHeaders"

    invoke-static {v5}, Ljava/util/Arrays;->toString([B)Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    invoke-static {v0, v1, v6}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/16 v17, 0x81

    invoke-static/range {v17 .. v17}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v17

    const/16 v18, 0x0

    invoke-static/range {v18 .. v18}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v18

    move-object/from16 v0, p1

    move-object/from16 v1, v17

    move-object/from16 v2, v18

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2

    .end local v5    # "charsetStr":[B
    .end local v6    # "e":Ljava/io/UnsupportedEncodingException;
    :cond_9
    invoke-static/range {p0 .. p0}, Lcom/android/internal/telephony/PduHeaders;->parseIntegerValue(Ljava/io/ByteArrayInputStream;)J

    move-result-wide v17

    move-wide/from16 v0, v17

    long-to-int v3, v0

    .local v3, "charset":I
    if-eqz p1, :cond_8

    const/16 v17, 0x81

    invoke-static/range {v17 .. v17}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v17

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v18

    move-object/from16 v0, p1

    move-object/from16 v1, v17

    move-object/from16 v2, v18

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2

    .end local v3    # "charset":I
    .end local v8    # "firstValue":I
    :sswitch_3
    const/16 v17, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-static {v0, v1}, Lcom/android/internal/telephony/PduHeaders;->parseWapString(Ljava/io/ByteArrayInputStream;I)[B

    move-result-object v11

    .local v11, "name":[B
    if-eqz v11, :cond_a

    if-eqz p1, :cond_a

    const/16 v17, 0x97

    invoke-static/range {v17 .. v17}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v17

    move-object/from16 v0, p1

    move-object/from16 v1, v17

    invoke-virtual {v0, v1, v11}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_a
    invoke-virtual/range {p0 .. p0}, Ljava/io/ByteArrayInputStream;->available()I

    move-result v15

    invoke-virtual/range {p2 .. p2}, Ljava/lang/Integer;->intValue()I

    move-result v17

    sub-int v18, v14, v15

    sub-int v10, v17, v18

    goto/16 :goto_0

    .end local v11    # "name":[B
    :cond_b
    const/4 v10, 0x0

    goto/16 :goto_0

    .end local v12    # "param":I
    :cond_c
    if-eqz v10, :cond_d

    const-string v17, "PduHeaders"

    const-string v18, "Corrupt Content-Type"

    invoke-static/range {v17 .. v18}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_d
    return-void

    :sswitch_data_0
    .sparse-switch
        0x81 -> :sswitch_2
        0x83 -> :sswitch_0
        0x85 -> :sswitch_3
        0x89 -> :sswitch_0
        0x8a -> :sswitch_1
        0x97 -> :sswitch_3
        0x99 -> :sswitch_1
    .end sparse-switch
.end method

.method private static parseEncodedStringValue(Ljava/io/ByteArrayInputStream;)Lcom/android/internal/telephony/EncodedStringValue;
    .locals 9
    .param p0, "pduDataStream"    # Ljava/io/ByteArrayInputStream;

    .prologue
    const/4 v7, 0x0

    sget-boolean v8, Lcom/android/internal/telephony/PduHeaders;->$assertionsDisabled:Z

    if-nez v8, :cond_0

    if-nez p0, :cond_0

    new-instance v7, Ljava/lang/AssertionError;

    invoke-direct {v7}, Ljava/lang/AssertionError;-><init>()V

    throw v7

    :cond_0
    const/4 v8, 0x1

    invoke-virtual {p0, v8}, Ljava/io/ByteArrayInputStream;->mark(I)V

    const/4 v3, 0x0

    .local v3, "returnValue":Lcom/android/internal/telephony/EncodedStringValue;
    const/4 v0, 0x0

    .local v0, "charset":I
    invoke-virtual {p0}, Ljava/io/ByteArrayInputStream;->read()I

    move-result v5

    .local v5, "temp":I
    sget-boolean v8, Lcom/android/internal/telephony/PduHeaders;->$assertionsDisabled:Z

    if-nez v8, :cond_1

    const/4 v8, -0x1

    if-ne v8, v5, :cond_1

    new-instance v7, Ljava/lang/AssertionError;

    invoke-direct {v7}, Ljava/lang/AssertionError;-><init>()V

    throw v7

    :cond_1
    and-int/lit16 v2, v5, 0xff

    .local v2, "first":I
    if-nez v2, :cond_2

    :goto_0
    return-object v7

    :cond_2
    invoke-virtual {p0}, Ljava/io/ByteArrayInputStream;->reset()V

    const/16 v8, 0x20

    if-ge v2, v8, :cond_3

    invoke-static {p0}, Lcom/android/internal/telephony/PduHeaders;->parseValueLength(Ljava/io/ByteArrayInputStream;)I

    invoke-static {p0}, Lcom/android/internal/telephony/PduHeaders;->parseShortInteger(Ljava/io/ByteArrayInputStream;)I

    move-result v0

    :cond_3
    const/4 v8, 0x0

    invoke-static {p0, v8}, Lcom/android/internal/telephony/PduHeaders;->parseWapString(Ljava/io/ByteArrayInputStream;I)[B

    move-result-object v6

    .local v6, "textString":[B
    if-eqz v0, :cond_4

    :try_start_0
    new-instance v4, Lcom/android/internal/telephony/EncodedStringValue;

    invoke-direct {v4, v0, v6}, Lcom/android/internal/telephony/EncodedStringValue;-><init>(I[B)V

    .end local v3    # "returnValue":Lcom/android/internal/telephony/EncodedStringValue;
    .local v4, "returnValue":Lcom/android/internal/telephony/EncodedStringValue;
    move-object v3, v4

    .end local v4    # "returnValue":Lcom/android/internal/telephony/EncodedStringValue;
    .restart local v3    # "returnValue":Lcom/android/internal/telephony/EncodedStringValue;
    :goto_1
    move-object v7, v3

    goto :goto_0

    :cond_4
    new-instance v4, Lcom/android/internal/telephony/EncodedStringValue;

    invoke-direct {v4, v6}, Lcom/android/internal/telephony/EncodedStringValue;-><init>([B)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .end local v3    # "returnValue":Lcom/android/internal/telephony/EncodedStringValue;
    .restart local v4    # "returnValue":Lcom/android/internal/telephony/EncodedStringValue;
    move-object v3, v4

    .end local v4    # "returnValue":Lcom/android/internal/telephony/EncodedStringValue;
    .restart local v3    # "returnValue":Lcom/android/internal/telephony/EncodedStringValue;
    goto :goto_1

    :catch_0
    move-exception v1

    .local v1, "e":Ljava/lang/Exception;
    goto :goto_0
.end method

.method public static parseHeaders(Ljava/io/ByteArrayInputStream;)Lcom/android/internal/telephony/PduHeaders;
    .locals 31
    .param p0, "pduDataStream"    # Ljava/io/ByteArrayInputStream;

    .prologue
    if-nez p0, :cond_1

    const/4 v11, 0x0

    :cond_0
    :goto_0
    return-object v11

    :cond_1
    const/4 v12, 0x1

    .local v12, "keepParsing":Z
    new-instance v11, Lcom/android/internal/telephony/PduHeaders;

    invoke-direct {v11}, Lcom/android/internal/telephony/PduHeaders;-><init>()V

    .local v11, "headers":Lcom/android/internal/telephony/PduHeaders;
    :cond_2
    :goto_1
    if-eqz v12, :cond_0

    invoke-virtual/range {p0 .. p0}, Ljava/io/ByteArrayInputStream;->available()I

    move-result v27

    if-lez v27, :cond_0

    const/16 v27, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v27

    invoke-virtual {v0, v1}, Ljava/io/ByteArrayInputStream;->mark(I)V

    invoke-static/range {p0 .. p0}, Lcom/android/internal/telephony/PduHeaders;->extractByteValue(Ljava/io/ByteArrayInputStream;)I

    move-result v10

    .local v10, "headerField":I
    const/16 v27, 0x20

    move/from16 v0, v27

    if-lt v10, v0, :cond_3

    const/16 v27, 0x7f

    move/from16 v0, v27

    if-gt v10, v0, :cond_3

    invoke-virtual/range {p0 .. p0}, Ljava/io/ByteArrayInputStream;->reset()V

    const/16 v27, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v27

    invoke-static {v0, v1}, Lcom/android/internal/telephony/PduHeaders;->parseWapString(Ljava/io/ByteArrayInputStream;I)[B

    move-result-object v4

    .local v4, "bVal":[B
    const-string v27, "PduHeaders"

    new-instance v28, Ljava/lang/StringBuilder;

    invoke-direct/range {v28 .. v28}, Ljava/lang/StringBuilder;-><init>()V

    const-string v29, "TextHeader: "

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    new-instance v29, Ljava/lang/String;

    move-object/from16 v0, v29

    invoke-direct {v0, v4}, Ljava/lang/String;-><init>([B)V

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    invoke-virtual/range {v28 .. v28}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v28

    invoke-static/range {v27 .. v28}, Landroid/telephony/Rlog;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .end local v4    # "bVal":[B
    :cond_3
    packed-switch v10, :pswitch_data_0

    :pswitch_0
    const-string v27, "PduHeaders"

    new-instance v28, Ljava/lang/StringBuilder;

    invoke-direct/range {v28 .. v28}, Ljava/lang/StringBuilder;-><init>()V

    const-string v29, "parseHeaders: Unknown header: "

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    move-object/from16 v0, v28

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v28

    invoke-virtual/range {v28 .. v28}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v28

    invoke-static/range {v27 .. v28}, Landroid/telephony/Rlog;->v(Ljava/lang/String;Ljava/lang/String;)I

    const-string v27, "PduHeaders"

    const-string v28, "Unknown header"

    invoke-static/range {v27 .. v28}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :pswitch_1
    invoke-static/range {p0 .. p0}, Lcom/android/internal/telephony/PduHeaders;->extractByteValue(Ljava/io/ByteArrayInputStream;)I

    move-result v16

    .local v16, "messageType":I
    const-string v27, "PduHeaders"

    new-instance v28, Ljava/lang/StringBuilder;

    invoke-direct/range {v28 .. v28}, Ljava/lang/StringBuilder;-><init>()V

    const-string v29, "parseHeaders: messageType: "

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    move-object/from16 v0, v28

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v28

    invoke-virtual/range {v28 .. v28}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v28

    invoke-static/range {v27 .. v28}, Landroid/telephony/Rlog;->v(Ljava/lang/String;Ljava/lang/String;)I

    packed-switch v16, :pswitch_data_1

    :try_start_0
    move/from16 v0, v16

    invoke-virtual {v11, v0, v10}, Lcom/android/internal/telephony/PduHeaders;->setOctet(II)V
    :try_end_0
    .catch Lcom/android/internal/telephony/PduHeaders$InvalidHeaderValueException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_1

    goto/16 :goto_1

    :catch_0
    move-exception v6

    .local v6, "e":Lcom/android/internal/telephony/PduHeaders$InvalidHeaderValueException;
    const-string v27, "PduHeaders"

    new-instance v28, Ljava/lang/StringBuilder;

    invoke-direct/range {v28 .. v28}, Ljava/lang/StringBuilder;-><init>()V

    const-string v29, "Set invalid Octet value: "

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    move-object/from16 v0, v28

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v28

    const-string v29, " into the header filed: "

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    move-object/from16 v0, v28

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v28

    invoke-virtual/range {v28 .. v28}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v28

    invoke-static/range {v27 .. v28}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v11, 0x0

    goto/16 :goto_0

    .end local v6    # "e":Lcom/android/internal/telephony/PduHeaders$InvalidHeaderValueException;
    :pswitch_2
    const/4 v11, 0x0

    goto/16 :goto_0

    :catch_1
    move-exception v6

    .local v6, "e":Ljava/lang/RuntimeException;
    const-string v27, "PduHeaders"

    new-instance v28, Ljava/lang/StringBuilder;

    invoke-direct/range {v28 .. v28}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v28

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v28

    const-string v29, "is not Octet header field!"

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    invoke-virtual/range {v28 .. v28}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v28

    invoke-static/range {v27 .. v28}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v11, 0x0

    goto/16 :goto_0

    .end local v6    # "e":Ljava/lang/RuntimeException;
    .end local v16    # "messageType":I
    :pswitch_3
    invoke-static/range {p0 .. p0}, Lcom/android/internal/telephony/PduHeaders;->extractByteValue(Ljava/io/ByteArrayInputStream;)I

    move-result v24

    .local v24, "value":I
    const-string v27, "PduHeaders"

    new-instance v28, Ljava/lang/StringBuilder;

    invoke-direct/range {v28 .. v28}, Ljava/lang/StringBuilder;-><init>()V

    const-string v29, "parseHeaders: byte: "

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    move-object/from16 v0, v28

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v28

    const-string v29, " value: "

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    move-object/from16 v0, v28

    move/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v28

    invoke-virtual/range {v28 .. v28}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v28

    invoke-static/range {v27 .. v28}, Landroid/telephony/Rlog;->v(Ljava/lang/String;Ljava/lang/String;)I

    :try_start_1
    move/from16 v0, v24

    invoke-virtual {v11, v0, v10}, Lcom/android/internal/telephony/PduHeaders;->setOctet(II)V
    :try_end_1
    .catch Lcom/android/internal/telephony/PduHeaders$InvalidHeaderValueException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_3

    goto/16 :goto_1

    :catch_2
    move-exception v6

    .local v6, "e":Lcom/android/internal/telephony/PduHeaders$InvalidHeaderValueException;
    const-string v27, "PduHeaders"

    new-instance v28, Ljava/lang/StringBuilder;

    invoke-direct/range {v28 .. v28}, Ljava/lang/StringBuilder;-><init>()V

    const-string v29, "Set invalid Octet value: "

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    move-object/from16 v0, v28

    move/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v28

    const-string v29, " into the header filed: "

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    move-object/from16 v0, v28

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v28

    invoke-virtual/range {v28 .. v28}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v28

    invoke-static/range {v27 .. v28}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v11, 0x0

    goto/16 :goto_0

    .end local v6    # "e":Lcom/android/internal/telephony/PduHeaders$InvalidHeaderValueException;
    :catch_3
    move-exception v6

    .local v6, "e":Ljava/lang/RuntimeException;
    const-string v27, "PduHeaders"

    new-instance v28, Ljava/lang/StringBuilder;

    invoke-direct/range {v28 .. v28}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v28

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v28

    const-string v29, "is not Octet header field!"

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    invoke-virtual/range {v28 .. v28}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v28

    invoke-static/range {v27 .. v28}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v11, 0x0

    goto/16 :goto_0

    .end local v6    # "e":Ljava/lang/RuntimeException;
    .end local v24    # "value":I
    :pswitch_4
    :try_start_2
    invoke-static/range {p0 .. p0}, Lcom/android/internal/telephony/PduHeaders;->parseLongInteger(Ljava/io/ByteArrayInputStream;)J

    move-result-wide v24

    .local v24, "value":J
    const-string v27, "PduHeaders"

    new-instance v28, Ljava/lang/StringBuilder;

    invoke-direct/range {v28 .. v28}, Ljava/lang/StringBuilder;-><init>()V

    const-string v29, "parseHeaders: longint: "

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    move-object/from16 v0, v28

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v28

    const-string v29, " value: "

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    move-object/from16 v0, v28

    move-wide/from16 v1, v24

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v28

    invoke-virtual/range {v28 .. v28}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v28

    invoke-static/range {v27 .. v28}, Landroid/telephony/Rlog;->v(Ljava/lang/String;Ljava/lang/String;)I

    move-wide/from16 v0, v24

    invoke-virtual {v11, v0, v1, v10}, Lcom/android/internal/telephony/PduHeaders;->setLongInteger(JI)V
    :try_end_2
    .catch Ljava/lang/RuntimeException; {:try_start_2 .. :try_end_2} :catch_4

    goto/16 :goto_1

    .end local v24    # "value":J
    :catch_4
    move-exception v6

    .restart local v6    # "e":Ljava/lang/RuntimeException;
    const-string v27, "PduHeaders"

    new-instance v28, Ljava/lang/StringBuilder;

    invoke-direct/range {v28 .. v28}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v28

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v28

    const-string v29, "is not Long-Integer header field!"

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    invoke-virtual/range {v28 .. v28}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v28

    invoke-static/range {v27 .. v28}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v11, 0x0

    goto/16 :goto_0

    .end local v6    # "e":Ljava/lang/RuntimeException;
    :pswitch_5
    :try_start_3
    invoke-static/range {p0 .. p0}, Lcom/android/internal/telephony/PduHeaders;->parseIntegerValue(Ljava/io/ByteArrayInputStream;)J

    move-result-wide v24

    .restart local v24    # "value":J
    const-string v27, "PduHeaders"

    new-instance v28, Ljava/lang/StringBuilder;

    invoke-direct/range {v28 .. v28}, Ljava/lang/StringBuilder;-><init>()V

    const-string v29, "parseHeaders: int: "

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    move-object/from16 v0, v28

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v28

    const-string v29, " value: "

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    move-object/from16 v0, v28

    move-wide/from16 v1, v24

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v28

    invoke-virtual/range {v28 .. v28}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v28

    invoke-static/range {v27 .. v28}, Landroid/telephony/Rlog;->v(Ljava/lang/String;Ljava/lang/String;)I

    move-wide/from16 v0, v24

    invoke-virtual {v11, v0, v1, v10}, Lcom/android/internal/telephony/PduHeaders;->setLongInteger(JI)V
    :try_end_3
    .catch Ljava/lang/RuntimeException; {:try_start_3 .. :try_end_3} :catch_5

    goto/16 :goto_1

    .end local v24    # "value":J
    :catch_5
    move-exception v6

    .restart local v6    # "e":Ljava/lang/RuntimeException;
    const-string v27, "PduHeaders"

    new-instance v28, Ljava/lang/StringBuilder;

    invoke-direct/range {v28 .. v28}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v28

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v28

    const-string v29, "is not Long-Integer header field!"

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    invoke-virtual/range {v28 .. v28}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v28

    invoke-static/range {v27 .. v28}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v11, 0x0

    goto/16 :goto_0

    .end local v6    # "e":Ljava/lang/RuntimeException;
    :pswitch_6
    const/16 v27, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v27

    invoke-static {v0, v1}, Lcom/android/internal/telephony/PduHeaders;->parseWapString(Ljava/io/ByteArrayInputStream;I)[B

    move-result-object v24

    .local v24, "value":[B
    if-eqz v24, :cond_2

    :try_start_4
    const-string v27, "PduHeaders"

    new-instance v28, Ljava/lang/StringBuilder;

    invoke-direct/range {v28 .. v28}, Ljava/lang/StringBuilder;-><init>()V

    const-string v29, "parseHeaders: string: "

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    move-object/from16 v0, v28

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v28

    const-string v29, " value: "

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    new-instance v29, Ljava/lang/String;

    move-object/from16 v0, v29

    move-object/from16 v1, v24

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>([B)V

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    invoke-virtual/range {v28 .. v28}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v28

    invoke-static/range {v27 .. v28}, Landroid/telephony/Rlog;->v(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v0, v24

    invoke-virtual {v11, v0, v10}, Lcom/android/internal/telephony/PduHeaders;->setTextString([BI)V
    :try_end_4
    .catch Ljava/lang/NullPointerException; {:try_start_4 .. :try_end_4} :catch_6
    .catch Ljava/lang/RuntimeException; {:try_start_4 .. :try_end_4} :catch_7

    goto/16 :goto_1

    :catch_6
    move-exception v6

    .local v6, "e":Ljava/lang/NullPointerException;
    const-string v27, "PduHeaders"

    const-string v28, "null pointer error!"

    invoke-static/range {v27 .. v28}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .end local v6    # "e":Ljava/lang/NullPointerException;
    :catch_7
    move-exception v6

    .local v6, "e":Ljava/lang/RuntimeException;
    const-string v27, "PduHeaders"

    new-instance v28, Ljava/lang/StringBuilder;

    invoke-direct/range {v28 .. v28}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v28

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v28

    const-string v29, "is not Text-String header field!"

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    invoke-virtual/range {v28 .. v28}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v28

    invoke-static/range {v27 .. v28}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v11, 0x0

    goto/16 :goto_0

    .end local v6    # "e":Ljava/lang/RuntimeException;
    .end local v24    # "value":[B
    :pswitch_7
    invoke-static/range {p0 .. p0}, Lcom/android/internal/telephony/PduHeaders;->parseEncodedStringValue(Ljava/io/ByteArrayInputStream;)Lcom/android/internal/telephony/EncodedStringValue;

    move-result-object v24

    .local v24, "value":Lcom/android/internal/telephony/EncodedStringValue;
    if-eqz v24, :cond_2

    :try_start_5
    const-string v27, "PduHeaders"

    new-instance v28, Ljava/lang/StringBuilder;

    invoke-direct/range {v28 .. v28}, Ljava/lang/StringBuilder;-><init>()V

    const-string v29, "parseHeaders: encoded string: "

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    move-object/from16 v0, v28

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v28

    const-string v29, " value: "

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    invoke-virtual/range {v24 .. v24}, Lcom/android/internal/telephony/EncodedStringValue;->getString()Ljava/lang/String;

    move-result-object v29

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    invoke-virtual/range {v28 .. v28}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v28

    invoke-static/range {v27 .. v28}, Landroid/telephony/Rlog;->v(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v0, v24

    invoke-virtual {v11, v0, v10}, Lcom/android/internal/telephony/PduHeaders;->setEncodedStringValue(Lcom/android/internal/telephony/EncodedStringValue;I)V
    :try_end_5
    .catch Ljava/lang/NullPointerException; {:try_start_5 .. :try_end_5} :catch_8
    .catch Ljava/lang/RuntimeException; {:try_start_5 .. :try_end_5} :catch_9

    goto/16 :goto_1

    :catch_8
    move-exception v6

    .local v6, "e":Ljava/lang/NullPointerException;
    const-string v27, "PduHeaders"

    const-string v28, "null pointer error!"

    invoke-static/range {v27 .. v28}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .end local v6    # "e":Ljava/lang/NullPointerException;
    :catch_9
    move-exception v6

    .local v6, "e":Ljava/lang/RuntimeException;
    const-string v27, "PduHeaders"

    new-instance v28, Ljava/lang/StringBuilder;

    invoke-direct/range {v28 .. v28}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v28

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v28

    const-string v29, "is not Encoded-String-Value header field!"

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    invoke-virtual/range {v28 .. v28}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v28

    invoke-static/range {v27 .. v28}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v11, 0x0

    goto/16 :goto_0

    .end local v6    # "e":Ljava/lang/RuntimeException;
    .end local v24    # "value":Lcom/android/internal/telephony/EncodedStringValue;
    :pswitch_8
    invoke-static/range {p0 .. p0}, Lcom/android/internal/telephony/PduHeaders;->parseEncodedStringValue(Ljava/io/ByteArrayInputStream;)Lcom/android/internal/telephony/EncodedStringValue;

    move-result-object v24

    .restart local v24    # "value":Lcom/android/internal/telephony/EncodedStringValue;
    if-eqz v24, :cond_2

    invoke-virtual/range {v24 .. v24}, Lcom/android/internal/telephony/EncodedStringValue;->getTextString()[B

    move-result-object v3

    .local v3, "address":[B
    if-eqz v3, :cond_5

    new-instance v20, Ljava/lang/String;

    move-object/from16 v0, v20

    invoke-direct {v0, v3}, Ljava/lang/String;-><init>([B)V

    .local v20, "str":Ljava/lang/String;
    const-string v27, "PduHeaders"

    new-instance v28, Ljava/lang/StringBuilder;

    invoke-direct/range {v28 .. v28}, Ljava/lang/StringBuilder;-><init>()V

    const-string v29, "parseHeaders: (to/cc/bcc) address: "

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    move-object/from16 v0, v28

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v28

    const-string v29, " value: "

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    move-object/from16 v0, v28

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    invoke-virtual/range {v28 .. v28}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v28

    invoke-static/range {v27 .. v28}, Landroid/telephony/Rlog;->v(Ljava/lang/String;Ljava/lang/String;)I

    const-string v27, "/"

    move-object/from16 v0, v20

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v7

    .local v7, "endIndex":I
    if-lez v7, :cond_4

    const/16 v27, 0x0

    move-object/from16 v0, v20

    move/from16 v1, v27

    invoke-virtual {v0, v1, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v20

    :cond_4
    :try_start_6
    invoke-virtual/range {v20 .. v20}, Ljava/lang/String;->getBytes()[B

    move-result-object v27

    move-object/from16 v0, v24

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/EncodedStringValue;->setTextString([B)V
    :try_end_6
    .catch Ljava/lang/NullPointerException; {:try_start_6 .. :try_end_6} :catch_b

    .end local v7    # "endIndex":I
    .end local v20    # "str":Ljava/lang/String;
    :cond_5
    :try_start_7
    move-object/from16 v0, v24

    invoke-virtual {v11, v0, v10}, Lcom/android/internal/telephony/PduHeaders;->appendEncodedStringValue(Lcom/android/internal/telephony/EncodedStringValue;I)V
    :try_end_7
    .catch Ljava/lang/NullPointerException; {:try_start_7 .. :try_end_7} :catch_a
    .catch Ljava/lang/RuntimeException; {:try_start_7 .. :try_end_7} :catch_c

    goto/16 :goto_1

    :catch_a
    move-exception v6

    .local v6, "e":Ljava/lang/NullPointerException;
    const-string v27, "PduHeaders"

    const-string v28, "null pointer error!"

    invoke-static/range {v27 .. v28}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .end local v6    # "e":Ljava/lang/NullPointerException;
    .restart local v7    # "endIndex":I
    .restart local v20    # "str":Ljava/lang/String;
    :catch_b
    move-exception v6

    .restart local v6    # "e":Ljava/lang/NullPointerException;
    const-string v27, "PduHeaders"

    const-string v28, "null pointer error!"

    invoke-static/range {v27 .. v28}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v11, 0x0

    goto/16 :goto_0

    .end local v6    # "e":Ljava/lang/NullPointerException;
    .end local v7    # "endIndex":I
    .end local v20    # "str":Ljava/lang/String;
    :catch_c
    move-exception v6

    .local v6, "e":Ljava/lang/RuntimeException;
    const-string v27, "PduHeaders"

    new-instance v28, Ljava/lang/StringBuilder;

    invoke-direct/range {v28 .. v28}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v28

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v28

    const-string v29, "is not Encoded-String-Value header field!"

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    invoke-virtual/range {v28 .. v28}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v28

    invoke-static/range {v27 .. v28}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v11, 0x0

    goto/16 :goto_0

    .end local v3    # "address":[B
    .end local v6    # "e":Ljava/lang/RuntimeException;
    .end local v24    # "value":Lcom/android/internal/telephony/EncodedStringValue;
    :pswitch_9
    invoke-static/range {p0 .. p0}, Lcom/android/internal/telephony/PduHeaders;->parseValueLength(Ljava/io/ByteArrayInputStream;)I

    invoke-static/range {p0 .. p0}, Lcom/android/internal/telephony/PduHeaders;->extractByteValue(Ljava/io/ByteArrayInputStream;)I

    move-result v23

    .local v23, "token":I
    :try_start_8
    invoke-static/range {p0 .. p0}, Lcom/android/internal/telephony/PduHeaders;->parseLongInteger(Ljava/io/ByteArrayInputStream;)J
    :try_end_8
    .catch Ljava/lang/RuntimeException; {:try_start_8 .. :try_end_8} :catch_e

    move-result-wide v21

    .local v21, "timeValue":J
    const/16 v27, 0x81

    move/from16 v0, v27

    move/from16 v1, v23

    if-ne v0, v1, :cond_6

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v27

    const-wide/16 v29, 0x3e8

    div-long v27, v27, v29

    add-long v21, v21, v27

    :cond_6
    :try_start_9
    const-string v27, "PduHeaders"

    new-instance v28, Ljava/lang/StringBuilder;

    invoke-direct/range {v28 .. v28}, Ljava/lang/StringBuilder;-><init>()V

    const-string v29, "parseHeaders: time value: "

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    move-object/from16 v0, v28

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v28

    const-string v29, " value: "

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    move-object/from16 v0, v28

    move-wide/from16 v1, v21

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v28

    invoke-virtual/range {v28 .. v28}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v28

    invoke-static/range {v27 .. v28}, Landroid/telephony/Rlog;->v(Ljava/lang/String;Ljava/lang/String;)I

    move-wide/from16 v0, v21

    invoke-virtual {v11, v0, v1, v10}, Lcom/android/internal/telephony/PduHeaders;->setLongInteger(JI)V
    :try_end_9
    .catch Ljava/lang/RuntimeException; {:try_start_9 .. :try_end_9} :catch_d

    goto/16 :goto_1

    :catch_d
    move-exception v6

    .restart local v6    # "e":Ljava/lang/RuntimeException;
    const-string v27, "PduHeaders"

    new-instance v28, Ljava/lang/StringBuilder;

    invoke-direct/range {v28 .. v28}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v28

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v28

    const-string v29, "is not Long-Integer header field!"

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    invoke-virtual/range {v28 .. v28}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v28

    invoke-static/range {v27 .. v28}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v11, 0x0

    goto/16 :goto_0

    .end local v6    # "e":Ljava/lang/RuntimeException;
    .end local v21    # "timeValue":J
    :catch_e
    move-exception v6

    .restart local v6    # "e":Ljava/lang/RuntimeException;
    const-string v27, "PduHeaders"

    new-instance v28, Ljava/lang/StringBuilder;

    invoke-direct/range {v28 .. v28}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v28

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v28

    const-string v29, "is not Long-Integer header field!"

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    invoke-virtual/range {v28 .. v28}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v28

    invoke-static/range {v27 .. v28}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v11, 0x0

    goto/16 :goto_0

    .end local v6    # "e":Ljava/lang/RuntimeException;
    .end local v23    # "token":I
    :pswitch_a
    const/4 v8, 0x0

    .local v8, "from":Lcom/android/internal/telephony/EncodedStringValue;
    invoke-static/range {p0 .. p0}, Lcom/android/internal/telephony/PduHeaders;->parseValueLength(Ljava/io/ByteArrayInputStream;)I

    invoke-static/range {p0 .. p0}, Lcom/android/internal/telephony/PduHeaders;->extractByteValue(Ljava/io/ByteArrayInputStream;)I

    move-result v9

    .local v9, "fromToken":I
    const/16 v27, 0x80

    move/from16 v0, v27

    if-ne v0, v9, :cond_9

    invoke-static/range {p0 .. p0}, Lcom/android/internal/telephony/PduHeaders;->parseEncodedStringValue(Ljava/io/ByteArrayInputStream;)Lcom/android/internal/telephony/EncodedStringValue;

    move-result-object v8

    if-eqz v8, :cond_8

    invoke-virtual {v8}, Lcom/android/internal/telephony/EncodedStringValue;->getTextString()[B

    move-result-object v3

    .restart local v3    # "address":[B
    if-eqz v3, :cond_8

    new-instance v20, Ljava/lang/String;

    move-object/from16 v0, v20

    invoke-direct {v0, v3}, Ljava/lang/String;-><init>([B)V

    .restart local v20    # "str":Ljava/lang/String;
    const-string v27, "/"

    move-object/from16 v0, v20

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v7

    .restart local v7    # "endIndex":I
    if-lez v7, :cond_7

    const/16 v27, 0x0

    move-object/from16 v0, v20

    move/from16 v1, v27

    invoke-virtual {v0, v1, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v20

    :cond_7
    :try_start_a
    invoke-virtual/range {v20 .. v20}, Ljava/lang/String;->getBytes()[B

    move-result-object v27

    move-object/from16 v0, v27

    invoke-virtual {v8, v0}, Lcom/android/internal/telephony/EncodedStringValue;->setTextString([B)V
    :try_end_a
    .catch Ljava/lang/NullPointerException; {:try_start_a .. :try_end_a} :catch_10

    .end local v3    # "address":[B
    .end local v7    # "endIndex":I
    .end local v20    # "str":Ljava/lang/String;
    :cond_8
    :goto_2
    :try_start_b
    const-string v27, "PduHeaders"

    new-instance v28, Ljava/lang/StringBuilder;

    invoke-direct/range {v28 .. v28}, Ljava/lang/StringBuilder;-><init>()V

    const-string v29, "parseHeaders: from address: "

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    move-object/from16 v0, v28

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v28

    const-string v29, " value: "

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    invoke-virtual {v8}, Lcom/android/internal/telephony/EncodedStringValue;->getString()Ljava/lang/String;

    move-result-object v29

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    invoke-virtual/range {v28 .. v28}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v28

    invoke-static/range {v27 .. v28}, Landroid/telephony/Rlog;->v(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v27, 0x89

    move/from16 v0, v27

    invoke-virtual {v11, v8, v0}, Lcom/android/internal/telephony/PduHeaders;->setEncodedStringValue(Lcom/android/internal/telephony/EncodedStringValue;I)V
    :try_end_b
    .catch Ljava/lang/NullPointerException; {:try_start_b .. :try_end_b} :catch_f
    .catch Ljava/lang/RuntimeException; {:try_start_b .. :try_end_b} :catch_12

    goto/16 :goto_1

    :catch_f
    move-exception v6

    .local v6, "e":Ljava/lang/NullPointerException;
    const-string v27, "PduHeaders"

    const-string v28, "null pointer error!"

    invoke-static/range {v27 .. v28}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .end local v6    # "e":Ljava/lang/NullPointerException;
    .restart local v3    # "address":[B
    .restart local v7    # "endIndex":I
    .restart local v20    # "str":Ljava/lang/String;
    :catch_10
    move-exception v6

    .restart local v6    # "e":Ljava/lang/NullPointerException;
    const-string v27, "PduHeaders"

    const-string v28, "null pointer error!"

    invoke-static/range {v27 .. v28}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v11, 0x0

    goto/16 :goto_0

    .end local v3    # "address":[B
    .end local v6    # "e":Ljava/lang/NullPointerException;
    .end local v7    # "endIndex":I
    .end local v20    # "str":Ljava/lang/String;
    :cond_9
    :try_start_c
    new-instance v8, Lcom/android/internal/telephony/EncodedStringValue;

    .end local v8    # "from":Lcom/android/internal/telephony/EncodedStringValue;
    const-string v27, "insert-address-token"

    invoke-virtual/range {v27 .. v27}, Ljava/lang/String;->getBytes()[B

    move-result-object v27

    move-object/from16 v0, v27

    invoke-direct {v8, v0}, Lcom/android/internal/telephony/EncodedStringValue;-><init>([B)V
    :try_end_c
    .catch Ljava/lang/NullPointerException; {:try_start_c .. :try_end_c} :catch_11

    .restart local v8    # "from":Lcom/android/internal/telephony/EncodedStringValue;
    goto :goto_2

    .end local v8    # "from":Lcom/android/internal/telephony/EncodedStringValue;
    :catch_11
    move-exception v6

    .restart local v6    # "e":Ljava/lang/NullPointerException;
    const-string v27, "PduHeaders"

    new-instance v28, Ljava/lang/StringBuilder;

    invoke-direct/range {v28 .. v28}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v28

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v28

    const-string v29, "is not Encoded-String-Value header field!"

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    invoke-virtual/range {v28 .. v28}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v28

    invoke-static/range {v27 .. v28}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v11, 0x0

    goto/16 :goto_0

    .end local v6    # "e":Ljava/lang/NullPointerException;
    .restart local v8    # "from":Lcom/android/internal/telephony/EncodedStringValue;
    :catch_12
    move-exception v6

    .local v6, "e":Ljava/lang/RuntimeException;
    const-string v27, "PduHeaders"

    new-instance v28, Ljava/lang/StringBuilder;

    invoke-direct/range {v28 .. v28}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v28

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v28

    const-string v29, "is not Encoded-String-Value header field!"

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    invoke-virtual/range {v28 .. v28}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v28

    invoke-static/range {v27 .. v28}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v11, 0x0

    goto/16 :goto_0

    .end local v6    # "e":Ljava/lang/RuntimeException;
    .end local v8    # "from":Lcom/android/internal/telephony/EncodedStringValue;
    .end local v9    # "fromToken":I
    :pswitch_b
    const/16 v27, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v27

    invoke-virtual {v0, v1}, Ljava/io/ByteArrayInputStream;->mark(I)V

    invoke-static/range {p0 .. p0}, Lcom/android/internal/telephony/PduHeaders;->extractByteValue(Ljava/io/ByteArrayInputStream;)I

    move-result v14

    .local v14, "messageClass":I
    const-string v27, "PduHeaders"

    new-instance v28, Ljava/lang/StringBuilder;

    invoke-direct/range {v28 .. v28}, Ljava/lang/StringBuilder;-><init>()V

    const-string v29, "parseHeaders: MESSAGE_CLASS: "

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    move-object/from16 v0, v28

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v28

    const-string v29, " value: "

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    move-object/from16 v0, v28

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v28

    invoke-virtual/range {v28 .. v28}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v28

    invoke-static/range {v27 .. v28}, Landroid/telephony/Rlog;->v(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v27, 0x80

    move/from16 v0, v27

    if-lt v14, v0, :cond_d

    const/16 v27, 0x80

    move/from16 v0, v27

    if-ne v0, v14, :cond_a

    :try_start_d
    const-string v27, "personal"

    invoke-virtual/range {v27 .. v27}, Ljava/lang/String;->getBytes()[B

    move-result-object v27

    const/16 v28, 0x8a

    move-object/from16 v0, v27

    move/from16 v1, v28

    invoke-virtual {v11, v0, v1}, Lcom/android/internal/telephony/PduHeaders;->setTextString([BI)V
    :try_end_d
    .catch Ljava/lang/NullPointerException; {:try_start_d .. :try_end_d} :catch_13
    .catch Ljava/lang/RuntimeException; {:try_start_d .. :try_end_d} :catch_14

    goto/16 :goto_1

    :catch_13
    move-exception v6

    .local v6, "e":Ljava/lang/NullPointerException;
    const-string v27, "PduHeaders"

    const-string v28, "null pointer error!"

    invoke-static/range {v27 .. v28}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .end local v6    # "e":Ljava/lang/NullPointerException;
    :cond_a
    const/16 v27, 0x81

    move/from16 v0, v27

    if-ne v0, v14, :cond_b

    :try_start_e
    const-string v27, "advertisement"

    invoke-virtual/range {v27 .. v27}, Ljava/lang/String;->getBytes()[B

    move-result-object v27

    const/16 v28, 0x8a

    move-object/from16 v0, v27

    move/from16 v1, v28

    invoke-virtual {v11, v0, v1}, Lcom/android/internal/telephony/PduHeaders;->setTextString([BI)V
    :try_end_e
    .catch Ljava/lang/NullPointerException; {:try_start_e .. :try_end_e} :catch_13
    .catch Ljava/lang/RuntimeException; {:try_start_e .. :try_end_e} :catch_14

    goto/16 :goto_1

    :catch_14
    move-exception v6

    .local v6, "e":Ljava/lang/RuntimeException;
    const-string v27, "PduHeaders"

    new-instance v28, Ljava/lang/StringBuilder;

    invoke-direct/range {v28 .. v28}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v28

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v28

    const-string v29, "is not Text-String header field!"

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    invoke-virtual/range {v28 .. v28}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v28

    invoke-static/range {v27 .. v28}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v11, 0x0

    goto/16 :goto_0

    .end local v6    # "e":Ljava/lang/RuntimeException;
    :cond_b
    const/16 v27, 0x82

    move/from16 v0, v27

    if-ne v0, v14, :cond_c

    :try_start_f
    const-string v27, "informational"

    invoke-virtual/range {v27 .. v27}, Ljava/lang/String;->getBytes()[B

    move-result-object v27

    const/16 v28, 0x8a

    move-object/from16 v0, v27

    move/from16 v1, v28

    invoke-virtual {v11, v0, v1}, Lcom/android/internal/telephony/PduHeaders;->setTextString([BI)V

    goto/16 :goto_1

    :cond_c
    const/16 v27, 0x83

    move/from16 v0, v27

    if-ne v0, v14, :cond_2

    const-string v27, "auto"

    invoke-virtual/range {v27 .. v27}, Ljava/lang/String;->getBytes()[B

    move-result-object v27

    const/16 v28, 0x8a

    move-object/from16 v0, v27

    move/from16 v1, v28

    invoke-virtual {v11, v0, v1}, Lcom/android/internal/telephony/PduHeaders;->setTextString([BI)V
    :try_end_f
    .catch Ljava/lang/NullPointerException; {:try_start_f .. :try_end_f} :catch_13
    .catch Ljava/lang/RuntimeException; {:try_start_f .. :try_end_f} :catch_14

    goto/16 :goto_1

    :cond_d
    invoke-virtual/range {p0 .. p0}, Ljava/io/ByteArrayInputStream;->reset()V

    const/16 v27, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v27

    invoke-static {v0, v1}, Lcom/android/internal/telephony/PduHeaders;->parseWapString(Ljava/io/ByteArrayInputStream;I)[B

    move-result-object v15

    .local v15, "messageClassString":[B
    if-eqz v15, :cond_2

    const/16 v27, 0x8a

    :try_start_10
    move/from16 v0, v27

    invoke-virtual {v11, v15, v0}, Lcom/android/internal/telephony/PduHeaders;->setTextString([BI)V
    :try_end_10
    .catch Ljava/lang/NullPointerException; {:try_start_10 .. :try_end_10} :catch_15
    .catch Ljava/lang/RuntimeException; {:try_start_10 .. :try_end_10} :catch_16

    goto/16 :goto_1

    :catch_15
    move-exception v6

    .local v6, "e":Ljava/lang/NullPointerException;
    const-string v27, "PduHeaders"

    const-string v28, "null pointer error!"

    invoke-static/range {v27 .. v28}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .end local v6    # "e":Ljava/lang/NullPointerException;
    :catch_16
    move-exception v6

    .local v6, "e":Ljava/lang/RuntimeException;
    const-string v27, "PduHeaders"

    new-instance v28, Ljava/lang/StringBuilder;

    invoke-direct/range {v28 .. v28}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v28

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v28

    const-string v29, "is not Text-String header field!"

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    invoke-virtual/range {v28 .. v28}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v28

    invoke-static/range {v27 .. v28}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v11, 0x0

    goto/16 :goto_0

    .end local v6    # "e":Ljava/lang/RuntimeException;
    .end local v14    # "messageClass":I
    .end local v15    # "messageClassString":[B
    :pswitch_c
    invoke-static/range {p0 .. p0}, Lcom/android/internal/telephony/PduHeaders;->parseShortInteger(Ljava/io/ByteArrayInputStream;)I

    move-result v26

    .local v26, "version":I
    :try_start_11
    const-string v27, "PduHeaders"

    new-instance v28, Ljava/lang/StringBuilder;

    invoke-direct/range {v28 .. v28}, Ljava/lang/StringBuilder;-><init>()V

    const-string v29, "parseHeaders: MMS_VERSION: "

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    move-object/from16 v0, v28

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v28

    const-string v29, " value: "

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    move-object/from16 v0, v28

    move/from16 v1, v26

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v28

    invoke-virtual/range {v28 .. v28}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v28

    invoke-static/range {v27 .. v28}, Landroid/telephony/Rlog;->v(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v27, 0x8d

    move/from16 v0, v26

    move/from16 v1, v27

    invoke-virtual {v11, v0, v1}, Lcom/android/internal/telephony/PduHeaders;->setOctet(II)V
    :try_end_11
    .catch Lcom/android/internal/telephony/PduHeaders$InvalidHeaderValueException; {:try_start_11 .. :try_end_11} :catch_17
    .catch Ljava/lang/RuntimeException; {:try_start_11 .. :try_end_11} :catch_18

    goto/16 :goto_1

    :catch_17
    move-exception v6

    .local v6, "e":Lcom/android/internal/telephony/PduHeaders$InvalidHeaderValueException;
    const-string v27, "PduHeaders"

    new-instance v28, Ljava/lang/StringBuilder;

    invoke-direct/range {v28 .. v28}, Ljava/lang/StringBuilder;-><init>()V

    const-string v29, "Set invalid Octet value: "

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    move-object/from16 v0, v28

    move/from16 v1, v26

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v28

    const-string v29, " into the header filed: "

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    move-object/from16 v0, v28

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v28

    invoke-virtual/range {v28 .. v28}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v28

    invoke-static/range {v27 .. v28}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v11, 0x0

    goto/16 :goto_0

    .end local v6    # "e":Lcom/android/internal/telephony/PduHeaders$InvalidHeaderValueException;
    :catch_18
    move-exception v6

    .local v6, "e":Ljava/lang/RuntimeException;
    const-string v27, "PduHeaders"

    new-instance v28, Ljava/lang/StringBuilder;

    invoke-direct/range {v28 .. v28}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v28

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v28

    const-string v29, "is not Octet header field!"

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    invoke-virtual/range {v28 .. v28}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v28

    invoke-static/range {v27 .. v28}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v11, 0x0

    goto/16 :goto_0

    .end local v6    # "e":Ljava/lang/RuntimeException;
    .end local v26    # "version":I
    :pswitch_d
    invoke-static/range {p0 .. p0}, Lcom/android/internal/telephony/PduHeaders;->parseValueLength(Ljava/io/ByteArrayInputStream;)I

    :try_start_12
    invoke-static/range {p0 .. p0}, Lcom/android/internal/telephony/PduHeaders;->parseIntegerValue(Ljava/io/ByteArrayInputStream;)J
    :try_end_12
    .catch Ljava/lang/RuntimeException; {:try_start_12 .. :try_end_12} :catch_1a

    invoke-static/range {p0 .. p0}, Lcom/android/internal/telephony/PduHeaders;->parseEncodedStringValue(Ljava/io/ByteArrayInputStream;)Lcom/android/internal/telephony/EncodedStringValue;

    move-result-object v19

    .local v19, "previouslySentBy":Lcom/android/internal/telephony/EncodedStringValue;
    if-eqz v19, :cond_2

    :try_start_13
    const-string v27, "PduHeaders"

    new-instance v28, Ljava/lang/StringBuilder;

    invoke-direct/range {v28 .. v28}, Ljava/lang/StringBuilder;-><init>()V

    const-string v29, "parseHeaders: PREVIOUSLY_SENT_BY: "

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    move-object/from16 v0, v28

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v28

    const-string v29, " value: "

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    invoke-virtual/range {v19 .. v19}, Lcom/android/internal/telephony/EncodedStringValue;->getString()Ljava/lang/String;

    move-result-object v29

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    invoke-virtual/range {v28 .. v28}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v28

    invoke-static/range {v27 .. v28}, Landroid/telephony/Rlog;->v(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v27, 0xa0

    move-object/from16 v0, v19

    move/from16 v1, v27

    invoke-virtual {v11, v0, v1}, Lcom/android/internal/telephony/PduHeaders;->setEncodedStringValue(Lcom/android/internal/telephony/EncodedStringValue;I)V
    :try_end_13
    .catch Ljava/lang/NullPointerException; {:try_start_13 .. :try_end_13} :catch_19
    .catch Ljava/lang/RuntimeException; {:try_start_13 .. :try_end_13} :catch_1b

    goto/16 :goto_1

    :catch_19
    move-exception v6

    .local v6, "e":Ljava/lang/NullPointerException;
    const-string v27, "PduHeaders"

    const-string v28, "null pointer error!"

    invoke-static/range {v27 .. v28}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .end local v6    # "e":Ljava/lang/NullPointerException;
    .end local v19    # "previouslySentBy":Lcom/android/internal/telephony/EncodedStringValue;
    :catch_1a
    move-exception v6

    .local v6, "e":Ljava/lang/RuntimeException;
    const-string v27, "PduHeaders"

    new-instance v28, Ljava/lang/StringBuilder;

    invoke-direct/range {v28 .. v28}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v28

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v28

    const-string v29, " is not Integer-Value"

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    invoke-virtual/range {v28 .. v28}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v28

    invoke-static/range {v27 .. v28}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v11, 0x0

    goto/16 :goto_0

    .end local v6    # "e":Ljava/lang/RuntimeException;
    .restart local v19    # "previouslySentBy":Lcom/android/internal/telephony/EncodedStringValue;
    :catch_1b
    move-exception v6

    .restart local v6    # "e":Ljava/lang/RuntimeException;
    const-string v27, "PduHeaders"

    new-instance v28, Ljava/lang/StringBuilder;

    invoke-direct/range {v28 .. v28}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v28

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v28

    const-string v29, "is not Encoded-String-Value header field!"

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    invoke-virtual/range {v28 .. v28}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v28

    invoke-static/range {v27 .. v28}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v11, 0x0

    goto/16 :goto_0

    .end local v6    # "e":Ljava/lang/RuntimeException;
    .end local v19    # "previouslySentBy":Lcom/android/internal/telephony/EncodedStringValue;
    :pswitch_e
    invoke-static/range {p0 .. p0}, Lcom/android/internal/telephony/PduHeaders;->parseValueLength(Ljava/io/ByteArrayInputStream;)I

    :try_start_14
    invoke-static/range {p0 .. p0}, Lcom/android/internal/telephony/PduHeaders;->parseIntegerValue(Ljava/io/ByteArrayInputStream;)J
    :try_end_14
    .catch Ljava/lang/RuntimeException; {:try_start_14 .. :try_end_14} :catch_1d

    :try_start_15
    invoke-static/range {p0 .. p0}, Lcom/android/internal/telephony/PduHeaders;->parseLongInteger(Ljava/io/ByteArrayInputStream;)J

    move-result-wide v17

    .local v17, "perviouslySentDate":J
    const-string v27, "PduHeaders"

    new-instance v28, Ljava/lang/StringBuilder;

    invoke-direct/range {v28 .. v28}, Ljava/lang/StringBuilder;-><init>()V

    const-string v29, "parseHeaders: PREVIOUSLY_SENT_DATE: "

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    move-object/from16 v0, v28

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v28

    const-string v29, " value: "

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    move-object/from16 v0, v28

    move-wide/from16 v1, v17

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v28

    invoke-virtual/range {v28 .. v28}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v28

    invoke-static/range {v27 .. v28}, Landroid/telephony/Rlog;->v(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v27, 0xa1

    move-wide/from16 v0, v17

    move/from16 v2, v27

    invoke-virtual {v11, v0, v1, v2}, Lcom/android/internal/telephony/PduHeaders;->setLongInteger(JI)V
    :try_end_15
    .catch Ljava/lang/RuntimeException; {:try_start_15 .. :try_end_15} :catch_1c

    goto/16 :goto_1

    .end local v17    # "perviouslySentDate":J
    :catch_1c
    move-exception v6

    .restart local v6    # "e":Ljava/lang/RuntimeException;
    const-string v27, "PduHeaders"

    new-instance v28, Ljava/lang/StringBuilder;

    invoke-direct/range {v28 .. v28}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v28

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v28

    const-string v29, "is not Long-Integer header field!"

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    invoke-virtual/range {v28 .. v28}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v28

    invoke-static/range {v27 .. v28}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v11, 0x0

    goto/16 :goto_0

    .end local v6    # "e":Ljava/lang/RuntimeException;
    :catch_1d
    move-exception v6

    .restart local v6    # "e":Ljava/lang/RuntimeException;
    const-string v27, "PduHeaders"

    new-instance v28, Ljava/lang/StringBuilder;

    invoke-direct/range {v28 .. v28}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v28

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v28

    const-string v29, " is not Integer-Value"

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    invoke-virtual/range {v28 .. v28}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v28

    invoke-static/range {v27 .. v28}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v11, 0x0

    goto/16 :goto_0

    .end local v6    # "e":Ljava/lang/RuntimeException;
    :pswitch_f
    const-string v27, "PduHeaders"

    new-instance v28, Ljava/lang/StringBuilder;

    invoke-direct/range {v28 .. v28}, Ljava/lang/StringBuilder;-><init>()V

    const-string v29, "parseHeaders: MM_FLAGS: "

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    move-object/from16 v0, v28

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v28

    const-string v29, " NOT REALLY SUPPORTED"

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    invoke-virtual/range {v28 .. v28}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v28

    invoke-static/range {v27 .. v28}, Landroid/telephony/Rlog;->v(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static/range {p0 .. p0}, Lcom/android/internal/telephony/PduHeaders;->parseValueLength(Ljava/io/ByteArrayInputStream;)I

    invoke-static/range {p0 .. p0}, Lcom/android/internal/telephony/PduHeaders;->extractByteValue(Ljava/io/ByteArrayInputStream;)I

    invoke-static/range {p0 .. p0}, Lcom/android/internal/telephony/PduHeaders;->parseEncodedStringValue(Ljava/io/ByteArrayInputStream;)Lcom/android/internal/telephony/EncodedStringValue;

    goto/16 :goto_1

    :pswitch_10
    const-string v27, "PduHeaders"

    new-instance v28, Ljava/lang/StringBuilder;

    invoke-direct/range {v28 .. v28}, Ljava/lang/StringBuilder;-><init>()V

    const-string v29, "parseHeaders: MBOX_TOTALS: "

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    move-object/from16 v0, v28

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v28

    invoke-virtual/range {v28 .. v28}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v28

    invoke-static/range {v27 .. v28}, Landroid/telephony/Rlog;->v(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static/range {p0 .. p0}, Lcom/android/internal/telephony/PduHeaders;->parseValueLength(Ljava/io/ByteArrayInputStream;)I

    invoke-static/range {p0 .. p0}, Lcom/android/internal/telephony/PduHeaders;->extractByteValue(Ljava/io/ByteArrayInputStream;)I

    :try_start_16
    invoke-static/range {p0 .. p0}, Lcom/android/internal/telephony/PduHeaders;->parseIntegerValue(Ljava/io/ByteArrayInputStream;)J
    :try_end_16
    .catch Ljava/lang/RuntimeException; {:try_start_16 .. :try_end_16} :catch_1e

    goto/16 :goto_1

    :catch_1e
    move-exception v6

    .restart local v6    # "e":Ljava/lang/RuntimeException;
    const-string v27, "PduHeaders"

    new-instance v28, Ljava/lang/StringBuilder;

    invoke-direct/range {v28 .. v28}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v28

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v28

    const-string v29, " is not Integer-Value"

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    invoke-virtual/range {v28 .. v28}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v28

    invoke-static/range {v27 .. v28}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v11, 0x0

    goto/16 :goto_0

    .end local v6    # "e":Ljava/lang/RuntimeException;
    :pswitch_11
    const-string v27, "PduHeaders"

    new-instance v28, Ljava/lang/StringBuilder;

    invoke-direct/range {v28 .. v28}, Ljava/lang/StringBuilder;-><init>()V

    const-string v29, "parseHeaders: ELEMENT_DESCRIPTOR: "

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    move-object/from16 v0, v28

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v28

    invoke-virtual/range {v28 .. v28}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v28

    invoke-static/range {v27 .. v28}, Landroid/telephony/Rlog;->v(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v27, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v27

    invoke-static {v0, v1}, Lcom/android/internal/telephony/PduHeaders;->parseContentType(Ljava/io/ByteArrayInputStream;Ljava/util/HashMap;)[B

    goto/16 :goto_1

    :pswitch_12
    new-instance v13, Ljava/util/HashMap;

    invoke-direct {v13}, Ljava/util/HashMap;-><init>()V

    .local v13, "map":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/Integer;Ljava/lang/Object;>;"
    move-object/from16 v0, p0

    invoke-static {v0, v13}, Lcom/android/internal/telephony/PduHeaders;->parseContentType(Ljava/io/ByteArrayInputStream;Ljava/util/HashMap;)[B

    move-result-object v5

    .local v5, "contentType":[B
    if-eqz v5, :cond_e

    :try_start_17
    const-string v27, "PduHeaders"

    new-instance v28, Ljava/lang/StringBuilder;

    invoke-direct/range {v28 .. v28}, Ljava/lang/StringBuilder;-><init>()V

    const-string v29, "parseHeaders: CONTENT_TYPE: "

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    move-object/from16 v0, v28

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v28

    invoke-virtual {v5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v29

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    invoke-virtual/range {v28 .. v28}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v28

    invoke-static/range {v27 .. v28}, Landroid/telephony/Rlog;->v(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v27, 0x84

    move/from16 v0, v27

    invoke-virtual {v11, v5, v0}, Lcom/android/internal/telephony/PduHeaders;->setTextString([BI)V
    :try_end_17
    .catch Ljava/lang/NullPointerException; {:try_start_17 .. :try_end_17} :catch_1f
    .catch Ljava/lang/RuntimeException; {:try_start_17 .. :try_end_17} :catch_20

    :cond_e
    :goto_3
    const/16 v27, 0x99

    invoke-static/range {v27 .. v27}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v27

    move-object/from16 v0, v27

    invoke-virtual {v13, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v27

    check-cast v27, [B

    check-cast v27, [B

    move-object/from16 v0, v27

    iput-object v0, v11, Lcom/android/internal/telephony/PduHeaders;->mStartParam:[B

    const/16 v27, 0x83

    invoke-static/range {v27 .. v27}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v27

    move-object/from16 v0, v27

    invoke-virtual {v13, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v27

    check-cast v27, [B

    check-cast v27, [B

    move-object/from16 v0, v27

    iput-object v0, v11, Lcom/android/internal/telephony/PduHeaders;->mTypeParam:[B

    const/4 v12, 0x0

    goto/16 :goto_1

    :catch_1f
    move-exception v6

    .local v6, "e":Ljava/lang/NullPointerException;
    const-string v27, "PduHeaders"

    const-string v28, "null pointer error!"

    invoke-static/range {v27 .. v28}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3

    .end local v6    # "e":Ljava/lang/NullPointerException;
    :catch_20
    move-exception v6

    .local v6, "e":Ljava/lang/RuntimeException;
    const-string v27, "PduHeaders"

    new-instance v28, Ljava/lang/StringBuilder;

    invoke-direct/range {v28 .. v28}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v28

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v28

    const-string v29, "is not Text-String header field!"

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    invoke-virtual/range {v28 .. v28}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v28

    invoke-static/range {v27 .. v28}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v11, 0x0

    goto/16 :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x81
        :pswitch_8
        :pswitch_8
        :pswitch_6
        :pswitch_12
        :pswitch_4
        :pswitch_3
        :pswitch_9
        :pswitch_9
        :pswitch_a
        :pswitch_b
        :pswitch_6
        :pswitch_1
        :pswitch_c
        :pswitch_4
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_7
        :pswitch_3
        :pswitch_3
        :pswitch_7
        :pswitch_8
        :pswitch_6
        :pswitch_3
        :pswitch_7
        :pswitch_3
        :pswitch_3
        :pswitch_9
        :pswitch_6
        :pswitch_4
        :pswitch_d
        :pswitch_e
        :pswitch_3
        :pswitch_3
        :pswitch_f
        :pswitch_3
        :pswitch_7
        :pswitch_3
        :pswitch_0
        :pswitch_3
        :pswitch_10
        :pswitch_3
        :pswitch_10
        :pswitch_5
        :pswitch_0
        :pswitch_5
        :pswitch_0
        :pswitch_3
        :pswitch_11
        :pswitch_5
        :pswitch_3
        :pswitch_7
        :pswitch_7
        :pswitch_6
        :pswitch_6
        :pswitch_6
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_6
        :pswitch_6
        :pswitch_3
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x89
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
    .end packed-switch
.end method

.method private static parseIntegerValue(Ljava/io/ByteArrayInputStream;)J
    .locals 3
    .param p0, "pduDataStream"    # Ljava/io/ByteArrayInputStream;

    .prologue
    sget-boolean v1, Lcom/android/internal/telephony/PduHeaders;->$assertionsDisabled:Z

    if-nez v1, :cond_0

    if-nez p0, :cond_0

    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1}, Ljava/lang/AssertionError;-><init>()V

    throw v1

    :cond_0
    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Ljava/io/ByteArrayInputStream;->mark(I)V

    invoke-virtual {p0}, Ljava/io/ByteArrayInputStream;->read()I

    move-result v0

    .local v0, "temp":I
    sget-boolean v1, Lcom/android/internal/telephony/PduHeaders;->$assertionsDisabled:Z

    if-nez v1, :cond_1

    const/4 v1, -0x1

    if-ne v1, v0, :cond_1

    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1}, Ljava/lang/AssertionError;-><init>()V

    throw v1

    :cond_1
    invoke-virtual {p0}, Ljava/io/ByteArrayInputStream;->reset()V

    const/16 v1, 0x7f

    if-le v0, v1, :cond_2

    invoke-static {p0}, Lcom/android/internal/telephony/PduHeaders;->parseShortInteger(Ljava/io/ByteArrayInputStream;)I

    move-result v1

    int-to-long v1, v1

    :goto_0
    return-wide v1

    :cond_2
    invoke-static {p0}, Lcom/android/internal/telephony/PduHeaders;->parseLongInteger(Ljava/io/ByteArrayInputStream;)J

    move-result-wide v1

    goto :goto_0
.end method

.method private static parseLongInteger(Ljava/io/ByteArrayInputStream;)J
    .locals 9
    .param p0, "pduDataStream"    # Ljava/io/ByteArrayInputStream;

    .prologue
    const/16 v8, 0x8

    const/4 v7, -0x1

    sget-boolean v5, Lcom/android/internal/telephony/PduHeaders;->$assertionsDisabled:Z

    if-nez v5, :cond_0

    if-nez p0, :cond_0

    new-instance v5, Ljava/lang/AssertionError;

    invoke-direct {v5}, Ljava/lang/AssertionError;-><init>()V

    throw v5

    :cond_0
    invoke-virtual {p0}, Ljava/io/ByteArrayInputStream;->read()I

    move-result v4

    .local v4, "temp":I
    sget-boolean v5, Lcom/android/internal/telephony/PduHeaders;->$assertionsDisabled:Z

    if-nez v5, :cond_1

    if-ne v7, v4, :cond_1

    new-instance v5, Ljava/lang/AssertionError;

    invoke-direct {v5}, Ljava/lang/AssertionError;-><init>()V

    throw v5

    :cond_1
    and-int/lit16 v0, v4, 0xff

    .local v0, "count":I
    if-le v0, v8, :cond_2

    new-instance v5, Ljava/lang/RuntimeException;

    const-string v6, "Octet count greater than 8 and I can\'t represent that!"

    invoke-direct {v5, v6}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v5

    :cond_2
    const-wide/16 v2, 0x0

    .local v2, "result":J
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_4

    invoke-virtual {p0}, Ljava/io/ByteArrayInputStream;->read()I

    move-result v4

    sget-boolean v5, Lcom/android/internal/telephony/PduHeaders;->$assertionsDisabled:Z

    if-nez v5, :cond_3

    if-ne v7, v4, :cond_3

    new-instance v5, Ljava/lang/AssertionError;

    invoke-direct {v5}, Ljava/lang/AssertionError;-><init>()V

    throw v5

    :cond_3
    shl-long/2addr v2, v8

    and-int/lit16 v5, v4, 0xff

    int-to-long v5, v5

    add-long/2addr v2, v5

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_4
    return-wide v2
.end method

.method private static parseShortInteger(Ljava/io/ByteArrayInputStream;)I
    .locals 2
    .param p0, "pduDataStream"    # Ljava/io/ByteArrayInputStream;

    .prologue
    sget-boolean v1, Lcom/android/internal/telephony/PduHeaders;->$assertionsDisabled:Z

    if-nez v1, :cond_0

    if-nez p0, :cond_0

    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1}, Ljava/lang/AssertionError;-><init>()V

    throw v1

    :cond_0
    invoke-virtual {p0}, Ljava/io/ByteArrayInputStream;->read()I

    move-result v0

    .local v0, "temp":I
    sget-boolean v1, Lcom/android/internal/telephony/PduHeaders;->$assertionsDisabled:Z

    if-nez v1, :cond_1

    const/4 v1, -0x1

    if-ne v1, v0, :cond_1

    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1}, Ljava/lang/AssertionError;-><init>()V

    throw v1

    :cond_1
    and-int/lit8 v1, v0, 0x7f

    return v1
.end method

.method private static parseUnsignedInt(Ljava/io/ByteArrayInputStream;)I
    .locals 4
    .param p0, "pduDataStream"    # Ljava/io/ByteArrayInputStream;

    .prologue
    const/4 v3, -0x1

    sget-boolean v2, Lcom/android/internal/telephony/PduHeaders;->$assertionsDisabled:Z

    if-nez v2, :cond_0

    if-nez p0, :cond_0

    new-instance v2, Ljava/lang/AssertionError;

    invoke-direct {v2}, Ljava/lang/AssertionError;-><init>()V

    throw v2

    :cond_0
    const/4 v0, 0x0

    .local v0, "result":I
    invoke-virtual {p0}, Ljava/io/ByteArrayInputStream;->read()I

    move-result v1

    .local v1, "temp":I
    if-ne v1, v3, :cond_1

    move v2, v1

    :goto_0
    return v2

    :cond_1
    and-int/lit16 v2, v1, 0x80

    if-eqz v2, :cond_2

    shl-int/lit8 v0, v0, 0x7

    and-int/lit8 v2, v1, 0x7f

    or-int/2addr v0, v2

    invoke-virtual {p0}, Ljava/io/ByteArrayInputStream;->read()I

    move-result v1

    if-ne v1, v3, :cond_1

    move v2, v1

    goto :goto_0

    :cond_2
    shl-int/lit8 v0, v0, 0x7

    and-int/lit8 v2, v1, 0x7f

    or-int/2addr v0, v2

    move v2, v0

    goto :goto_0
.end method

.method private static parseValueLength(Ljava/io/ByteArrayInputStream;)I
    .locals 4
    .param p0, "pduDataStream"    # Ljava/io/ByteArrayInputStream;

    .prologue
    sget-boolean v2, Lcom/android/internal/telephony/PduHeaders;->$assertionsDisabled:Z

    if-nez v2, :cond_0

    if-nez p0, :cond_0

    new-instance v2, Ljava/lang/AssertionError;

    invoke-direct {v2}, Ljava/lang/AssertionError;-><init>()V

    throw v2

    :cond_0
    invoke-virtual {p0}, Ljava/io/ByteArrayInputStream;->read()I

    move-result v1

    .local v1, "temp":I
    sget-boolean v2, Lcom/android/internal/telephony/PduHeaders;->$assertionsDisabled:Z

    if-nez v2, :cond_1

    const/4 v2, -0x1

    if-ne v2, v1, :cond_1

    new-instance v2, Ljava/lang/AssertionError;

    invoke-direct {v2}, Ljava/lang/AssertionError;-><init>()V

    throw v2

    :cond_1
    and-int/lit16 v0, v1, 0xff

    .local v0, "first":I
    const/16 v2, 0x1e

    if-gt v0, v2, :cond_2

    .end local v0    # "first":I
    :goto_0
    return v0

    .restart local v0    # "first":I
    :cond_2
    const/16 v2, 0x1f

    if-ne v0, v2, :cond_3

    invoke-static {p0}, Lcom/android/internal/telephony/PduHeaders;->parseUnsignedInt(Ljava/io/ByteArrayInputStream;)I

    move-result v0

    goto :goto_0

    :cond_3
    new-instance v2, Ljava/lang/RuntimeException;

    const-string v3, "Value length > LENGTH_QUOTE!"

    invoke-direct {v2, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method private static parseWapString(Ljava/io/ByteArrayInputStream;I)[B
    .locals 3
    .param p0, "pduDataStream"    # Ljava/io/ByteArrayInputStream;
    .param p1, "stringType"    # I

    .prologue
    const/4 v2, 0x1

    sget-boolean v1, Lcom/android/internal/telephony/PduHeaders;->$assertionsDisabled:Z

    if-nez v1, :cond_0

    if-nez p0, :cond_0

    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1}, Ljava/lang/AssertionError;-><init>()V

    throw v1

    :cond_0
    invoke-virtual {p0, v2}, Ljava/io/ByteArrayInputStream;->mark(I)V

    invoke-virtual {p0}, Ljava/io/ByteArrayInputStream;->read()I

    move-result v0

    .local v0, "temp":I
    sget-boolean v1, Lcom/android/internal/telephony/PduHeaders;->$assertionsDisabled:Z

    if-nez v1, :cond_1

    const/4 v1, -0x1

    if-ne v1, v0, :cond_1

    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1}, Ljava/lang/AssertionError;-><init>()V

    throw v1

    :cond_1
    if-ne v2, p1, :cond_2

    const/16 v1, 0x22

    if-ne v1, v0, :cond_2

    invoke-virtual {p0, v2}, Ljava/io/ByteArrayInputStream;->mark(I)V

    :goto_0
    invoke-static {p0, p1}, Lcom/android/internal/telephony/PduHeaders;->getWapString(Ljava/io/ByteArrayInputStream;I)[B

    move-result-object v1

    return-object v1

    :cond_2
    if-nez p1, :cond_3

    const/16 v1, 0x7f

    if-ne v1, v0, :cond_3

    invoke-virtual {p0, v2}, Ljava/io/ByteArrayInputStream;->mark(I)V

    goto :goto_0

    :cond_3
    invoke-virtual {p0}, Ljava/io/ByteArrayInputStream;->reset()V

    goto :goto_0
.end method

.method private static skipWapValue(Ljava/io/ByteArrayInputStream;I)I
    .locals 3
    .param p0, "pduDataStream"    # Ljava/io/ByteArrayInputStream;
    .param p1, "length"    # I

    .prologue
    sget-boolean v2, Lcom/android/internal/telephony/PduHeaders;->$assertionsDisabled:Z

    if-nez v2, :cond_0

    if-nez p0, :cond_0

    new-instance v2, Ljava/lang/AssertionError;

    invoke-direct {v2}, Ljava/lang/AssertionError;-><init>()V

    throw v2

    :cond_0
    new-array v0, p1, [B

    .local v0, "area":[B
    const/4 v2, 0x0

    invoke-virtual {p0, v0, v2, p1}, Ljava/io/ByteArrayInputStream;->read([BII)I

    move-result v1

    .local v1, "readLen":I
    if-ge v1, p1, :cond_1

    const/4 v1, -0x1

    .end local v1    # "readLen":I
    :cond_1
    return v1
.end method


# virtual methods
.method protected appendEncodedStringValue(Lcom/android/internal/telephony/EncodedStringValue;I)V
    .locals 3
    .param p1, "value"    # Lcom/android/internal/telephony/EncodedStringValue;
    .param p2, "field"    # I

    .prologue
    if-nez p1, :cond_0

    new-instance v1, Ljava/lang/NullPointerException;

    invoke-direct {v1}, Ljava/lang/NullPointerException;-><init>()V

    throw v1

    :cond_0
    sparse-switch p2, :sswitch_data_0

    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "Invalid header field!"

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1

    :sswitch_0
    iget-object v1, p0, Lcom/android/internal/telephony/PduHeaders;->mHeaderMap:Ljava/util/HashMap;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    .local v0, "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/internal/telephony/EncodedStringValue;>;"
    if-nez v0, :cond_1

    new-instance v0, Ljava/util/ArrayList;

    .end local v0    # "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/internal/telephony/EncodedStringValue;>;"
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .restart local v0    # "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/internal/telephony/EncodedStringValue;>;"
    :cond_1
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v1, p0, Lcom/android/internal/telephony/PduHeaders;->mHeaderMap:Ljava/util/HashMap;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void

    nop

    :sswitch_data_0
    .sparse-switch
        0x81 -> :sswitch_0
        0x82 -> :sswitch_0
        0x97 -> :sswitch_0
    .end sparse-switch
.end method

.method protected getEncodedStringValue(I)Lcom/android/internal/telephony/EncodedStringValue;
    .locals 2
    .param p1, "field"    # I

    .prologue
    iget-object v0, p0, Lcom/android/internal/telephony/PduHeaders;->mHeaderMap:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/EncodedStringValue;

    return-object v0
.end method

.method protected getEncodedStringValues(I)[Lcom/android/internal/telephony/EncodedStringValue;
    .locals 4
    .param p1, "field"    # I

    .prologue
    iget-object v2, p0, Lcom/android/internal/telephony/PduHeaders;->mHeaderMap:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    .local v0, "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/internal/telephony/EncodedStringValue;>;"
    if-nez v0, :cond_0

    const/4 v2, 0x0

    :goto_0
    return-object v2

    :cond_0
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v2

    new-array v1, v2, [Lcom/android/internal/telephony/EncodedStringValue;

    .local v1, "values":[Lcom/android/internal/telephony/EncodedStringValue;
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Lcom/android/internal/telephony/EncodedStringValue;

    goto :goto_0
.end method

.method protected getLongInteger(I)J
    .locals 3
    .param p1, "field"    # I

    .prologue
    iget-object v1, p0, Lcom/android/internal/telephony/PduHeaders;->mHeaderMap:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    .local v0, "longInteger":Ljava/lang/Long;
    if-nez v0, :cond_0

    const-wide/16 v1, -0x1

    :goto_0
    return-wide v1

    :cond_0
    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    goto :goto_0
.end method

.method protected getOctet(I)I
    .locals 3
    .param p1, "field"    # I

    .prologue
    iget-object v1, p0, Lcom/android/internal/telephony/PduHeaders;->mHeaderMap:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    .local v0, "octet":Ljava/lang/Integer;
    if-nez v0, :cond_0

    const/4 v1, 0x0

    :goto_0
    return v1

    :cond_0
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    goto :goto_0
.end method

.method protected getTextString(I)[B
    .locals 2
    .param p1, "field"    # I

    .prologue
    iget-object v0, p0, Lcom/android/internal/telephony/PduHeaders;->mHeaderMap:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    check-cast v0, [B

    return-object v0
.end method

.method protected setEncodedStringValue(Lcom/android/internal/telephony/EncodedStringValue;I)V
    .locals 2
    .param p1, "value"    # Lcom/android/internal/telephony/EncodedStringValue;
    .param p2, "field"    # I

    .prologue
    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    :cond_0
    sparse-switch p2, :sswitch_data_0

    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Invalid header field!"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    :sswitch_0
    iget-object v0, p0, Lcom/android/internal/telephony/PduHeaders;->mHeaderMap:Ljava/util/HashMap;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void

    nop

    :sswitch_data_0
    .sparse-switch
        0x89 -> :sswitch_0
        0x93 -> :sswitch_0
        0x96 -> :sswitch_0
        0x9a -> :sswitch_0
        0xa0 -> :sswitch_0
        0xa4 -> :sswitch_0
        0xa6 -> :sswitch_0
        0xb5 -> :sswitch_0
        0xb6 -> :sswitch_0
    .end sparse-switch
.end method

.method protected setEncodedStringValues([Lcom/android/internal/telephony/EncodedStringValue;I)V
    .locals 4
    .param p1, "value"    # [Lcom/android/internal/telephony/EncodedStringValue;
    .param p2, "field"    # I

    .prologue
    if-nez p1, :cond_0

    new-instance v2, Ljava/lang/NullPointerException;

    invoke-direct {v2}, Ljava/lang/NullPointerException;-><init>()V

    throw v2

    :cond_0
    sparse-switch p2, :sswitch_data_0

    new-instance v2, Ljava/lang/RuntimeException;

    const-string v3, "Invalid header field!"

    invoke-direct {v2, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v2

    :sswitch_0
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .local v1, "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/internal/telephony/EncodedStringValue;>;"
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    array-length v2, p1

    if-ge v0, v2, :cond_1

    aget-object v2, p1, v0

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    iget-object v2, p0, Lcom/android/internal/telephony/PduHeaders;->mHeaderMap:Ljava/util/HashMap;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void

    :sswitch_data_0
    .sparse-switch
        0x81 -> :sswitch_0
        0x82 -> :sswitch_0
        0x97 -> :sswitch_0
    .end sparse-switch
.end method

.method protected setLongInteger(JI)V
    .locals 3
    .param p1, "value"    # J
    .param p3, "field"    # I

    .prologue
    sparse-switch p3, :sswitch_data_0

    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Invalid header field!"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    :sswitch_0
    iget-object v0, p0, Lcom/android/internal/telephony/PduHeaders;->mHeaderMap:Ljava/util/HashMap;

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void

    nop

    :sswitch_data_0
    .sparse-switch
        0x85 -> :sswitch_0
        0x87 -> :sswitch_0
        0x88 -> :sswitch_0
        0x8e -> :sswitch_0
        0x9d -> :sswitch_0
        0x9f -> :sswitch_0
        0xa1 -> :sswitch_0
        0xad -> :sswitch_0
        0xaf -> :sswitch_0
        0xb3 -> :sswitch_0
    .end sparse-switch
.end method

.method protected setOctet(II)V
    .locals 5
    .param p1, "value"    # I
    .param p2, "field"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/telephony/PduHeaders$InvalidHeaderValueException;
        }
    .end annotation

    .prologue
    const/16 v4, 0xe0

    const/16 v3, 0xc0

    const/16 v0, 0x81

    const/16 v2, 0xff

    const/16 v1, 0x80

    packed-switch p2, :pswitch_data_0

    :pswitch_0
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Invalid header field!"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_1
    if-eq v1, p1, :cond_5

    if-eq v0, p1, :cond_5

    new-instance v0, Lcom/android/internal/telephony/PduHeaders$InvalidHeaderValueException;

    const-string v1, "Invalid Octet value!"

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/PduHeaders$InvalidHeaderValueException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_2
    if-eq v1, p1, :cond_5

    if-eq v0, p1, :cond_5

    new-instance v0, Lcom/android/internal/telephony/PduHeaders$InvalidHeaderValueException;

    const-string v1, "Invalid Octet value!"

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/PduHeaders$InvalidHeaderValueException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_3
    if-eq v1, p1, :cond_5

    if-eq v0, p1, :cond_5

    new-instance v0, Lcom/android/internal/telephony/PduHeaders$InvalidHeaderValueException;

    const-string v1, "Invalid Octet value!"

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/PduHeaders$InvalidHeaderValueException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_4
    if-lt p1, v1, :cond_0

    const/16 v0, 0x82

    if-le p1, v0, :cond_5

    :cond_0
    new-instance v0, Lcom/android/internal/telephony/PduHeaders$InvalidHeaderValueException;

    const-string v1, "Invalid Octet value!"

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/PduHeaders$InvalidHeaderValueException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_5
    if-lt p1, v1, :cond_1

    const/16 v0, 0x87

    if-le p1, v0, :cond_5

    :cond_1
    new-instance v0, Lcom/android/internal/telephony/PduHeaders$InvalidHeaderValueException;

    const-string v1, "Invalid Octet value!"

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/PduHeaders$InvalidHeaderValueException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_6
    if-lt p1, v1, :cond_2

    const/16 v0, 0x83

    if-le p1, v0, :cond_5

    :cond_2
    new-instance v0, Lcom/android/internal/telephony/PduHeaders$InvalidHeaderValueException;

    const-string v1, "Invalid Octet value!"

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/PduHeaders$InvalidHeaderValueException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_7
    if-lt p1, v1, :cond_3

    const/16 v0, 0x84

    if-le p1, v0, :cond_5

    :cond_3
    new-instance v0, Lcom/android/internal/telephony/PduHeaders$InvalidHeaderValueException;

    const-string v1, "Invalid Octet value!"

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/PduHeaders$InvalidHeaderValueException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_8
    if-eq v1, p1, :cond_5

    new-instance v0, Lcom/android/internal/telephony/PduHeaders$InvalidHeaderValueException;

    const-string v1, "Invalid Octet value!"

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/PduHeaders$InvalidHeaderValueException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_9
    if-lt p1, v1, :cond_4

    const/16 v0, 0x87

    if-le p1, v0, :cond_5

    :cond_4
    new-instance v0, Lcom/android/internal/telephony/PduHeaders$InvalidHeaderValueException;

    const-string v1, "Invalid Octet value!"

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/PduHeaders$InvalidHeaderValueException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_a
    const/16 v0, 0xc2

    if-le p1, v0, :cond_6

    if-ge p1, v4, :cond_6

    const/16 p1, 0xc0

    :cond_5
    :goto_0
    iget-object v0, p0, Lcom/android/internal/telephony/PduHeaders;->mHeaderMap:Ljava/util/HashMap;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void

    :cond_6
    const/16 v0, 0xe3

    if-le p1, v0, :cond_7

    if-gt p1, v2, :cond_7

    const/16 p1, 0xe0

    goto :goto_0

    :cond_7
    if-lt p1, v1, :cond_9

    if-le p1, v1, :cond_8

    if-lt p1, v3, :cond_9

    :cond_8
    if-le p1, v2, :cond_5

    :cond_9
    const/16 p1, 0xe0

    goto :goto_0

    :pswitch_b
    const/16 v0, 0xc1

    if-le p1, v0, :cond_a

    if-ge p1, v4, :cond_a

    const/16 p1, 0xc0

    goto :goto_0

    :cond_a
    const/16 v0, 0xe4

    if-le p1, v0, :cond_b

    if-gt p1, v2, :cond_b

    const/16 p1, 0xe0

    goto :goto_0

    :cond_b
    if-lt p1, v1, :cond_d

    if-le p1, v1, :cond_c

    if-lt p1, v3, :cond_d

    :cond_c
    if-le p1, v2, :cond_5

    :cond_d
    const/16 p1, 0xe0

    goto :goto_0

    :pswitch_c
    const/16 v0, 0xc4

    if-le p1, v0, :cond_e

    if-ge p1, v4, :cond_e

    const/16 p1, 0xc0

    goto :goto_0

    :cond_e
    const/16 v0, 0xeb

    if-le p1, v0, :cond_f

    if-le p1, v2, :cond_11

    :cond_f
    if-lt p1, v1, :cond_11

    const/16 v0, 0x88

    if-le p1, v0, :cond_10

    if-lt p1, v3, :cond_11

    :cond_10
    if-le p1, v2, :cond_5

    :cond_11
    const/16 p1, 0xe0

    goto :goto_0

    :pswitch_d
    const/16 v0, 0x10

    if-lt p1, v0, :cond_12

    const/16 v0, 0x13

    if-le p1, v0, :cond_5

    :cond_12
    const/16 p1, 0x12

    goto :goto_0

    :pswitch_e
    if-lt p1, v1, :cond_13

    const/16 v0, 0x97

    if-le p1, v0, :cond_5

    :cond_13
    new-instance v0, Lcom/android/internal/telephony/PduHeaders$InvalidHeaderValueException;

    const-string v1, "Invalid Octet value!"

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/PduHeaders$InvalidHeaderValueException;-><init>(Ljava/lang/String;)V

    throw v0

    nop

    :pswitch_data_0
    .packed-switch 0x86
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_e
        :pswitch_d
        :pswitch_0
        :pswitch_4
        :pswitch_1
        :pswitch_1
        :pswitch_c
        :pswitch_0
        :pswitch_1
        :pswitch_5
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_a
        :pswitch_0
        :pswitch_2
        :pswitch_6
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_7
        :pswitch_0
        :pswitch_b
        :pswitch_0
        :pswitch_1
        :pswitch_0
        :pswitch_1
        :pswitch_0
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_8
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_9
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_3
    .end packed-switch
.end method

.method protected setTextString([BI)V
    .locals 2
    .param p1, "value"    # [B
    .param p2, "field"    # I

    .prologue
    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    :cond_0
    sparse-switch p2, :sswitch_data_0

    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Invalid header field!"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    :sswitch_0
    iget-object v0, p0, Lcom/android/internal/telephony/PduHeaders;->mHeaderMap:Ljava/util/HashMap;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void

    nop

    :sswitch_data_0
    .sparse-switch
        0x83 -> :sswitch_0
        0x84 -> :sswitch_0
        0x8a -> :sswitch_0
        0x8b -> :sswitch_0
        0x98 -> :sswitch_0
        0x9e -> :sswitch_0
        0xb7 -> :sswitch_0
        0xb8 -> :sswitch_0
        0xb9 -> :sswitch_0
        0xbd -> :sswitch_0
        0xbe -> :sswitch_0
    .end sparse-switch
.end method
