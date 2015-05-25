.class Lcom/yulong/android/telephony/CPTelephonyUtils$MyHandler;
.super Landroid/os/Handler;
.source "CPTelephonyUtils.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/yulong/android/telephony/CPTelephonyUtils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "MyHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/yulong/android/telephony/CPTelephonyUtils;


# direct methods
.method constructor <init>(Lcom/yulong/android/telephony/CPTelephonyUtils;Landroid/os/Looper;)V
    .locals 0
    .param p2, "looper"    # Landroid/os/Looper;

    .prologue
    .line 139
    iput-object p1, p0, Lcom/yulong/android/telephony/CPTelephonyUtils$MyHandler;->this$0:Lcom/yulong/android/telephony/CPTelephonyUtils;

    .line 140
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 141
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 1
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 146
    iget v0, p1, Landroid/os/Message;->what:I

    .line 149
    return-void
.end method
