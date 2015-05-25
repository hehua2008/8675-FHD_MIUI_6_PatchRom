.class public abstract Lcom/android/internal/telephony/Connection;
.super Ljava/lang/Object;
.source "Connection.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/telephony/Connection$PostDialState;,
        Lcom/android/internal/telephony/Connection$DisconnectCause;
    }
.end annotation


# static fields
.field public static CDMA_LINK:I

.field public static GSM_LINK:I

.field public static IMS_LINK:I

.field private static LOG_TAG:Ljava/lang/String;

.field public static UNKNOWN:I


# instance fields
.field public callDetails:Lcom/android/internal/telephony/CallDetails;

.field public callModifyRequest:Lcom/android/internal/telephony/CallModify;

.field public contactID:J

.field public errorInfo:Ljava/lang/String;

.field public immediatelyHangupStyle:I

.field public isQuickDial:Z

.field protected linkType:I

.field protected mCnapName:Ljava/lang/String;

.field protected mCnapNamePresentation:I

.field public mConnectTimeReal:J

.field mUserData:Ljava/lang/Object;

.field public name:Ljava/lang/String;

.field protected numberPresentation:I

.field public queryAdscriptionNumber:Ljava/lang/String;

.field public sessId:I

.field public showCallCardmIncallpromopt:Z

.field vtFlag:Z

.field public writeToCallLogNumber:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 30
    const/4 v0, 0x0

    sput v0, Lcom/android/internal/telephony/Connection;->UNKNOWN:I

    .line 31
    const/4 v0, 0x1

    sput v0, Lcom/android/internal/telephony/Connection;->CDMA_LINK:I

    .line 32
    const/4 v0, 0x2

    sput v0, Lcom/android/internal/telephony/Connection;->GSM_LINK:I

    .line 34
    const/4 v0, 0x3

    sput v0, Lcom/android/internal/telephony/Connection;->IMS_LINK:I

    .line 42
    const-string v0, "TelephonyConnection"

    sput-object v0, Lcom/android/internal/telephony/Connection;->LOG_TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    sget v0, Lcom/android/internal/telephony/PhoneConstants;->PRESENTATION_ALLOWED:I

    iput v0, p0, Lcom/android/internal/telephony/Connection;->mCnapNamePresentation:I

    .line 28
    sget v0, Lcom/android/internal/telephony/PhoneConstants;->PRESENTATION_ALLOWED:I

    iput v0, p0, Lcom/android/internal/telephony/Connection;->numberPresentation:I

    .line 36
    new-instance v0, Lcom/android/internal/telephony/CallDetails;

    invoke-direct {v0}, Lcom/android/internal/telephony/CallDetails;-><init>()V

    iput-object v0, p0, Lcom/android/internal/telephony/Connection;->callDetails:Lcom/android/internal/telephony/CallDetails;

    .line 37
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/internal/telephony/Connection;->callModifyRequest:Lcom/android/internal/telephony/CallModify;

    .line 52
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/internal/telephony/Connection;->immediatelyHangupStyle:I

    .line 62
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/internal/telephony/Connection;->showCallCardmIncallpromopt:Z

    .line 354
    return-void
.end method


# virtual methods
.method public abstract cancelPostDial()V
.end method

.method public clearUserData()V
    .locals 1

    .prologue
    .line 371
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/internal/telephony/Connection;->mUserData:Ljava/lang/Object;

    .line 372
    return-void
.end method

.method public abstract getAddress()Ljava/lang/String;
.end method

.method public abstract getCall()Lcom/android/internal/telephony/Call;
.end method

.method public getCallDetails()Lcom/android/internal/telephony/CallDetails;
    .locals 1

    .prologue
    .line 185
    iget-object v0, p0, Lcom/android/internal/telephony/Connection;->callDetails:Lcom/android/internal/telephony/CallDetails;

    return-object v0
.end method

.method public getCallModify()Lcom/android/internal/telephony/CallModify;
    .locals 1

    .prologue
    .line 189
    iget-object v0, p0, Lcom/android/internal/telephony/Connection;->callModifyRequest:Lcom/android/internal/telephony/CallModify;

    return-object v0
.end method

.method public getCnapName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 155
    iget-object v0, p0, Lcom/android/internal/telephony/Connection;->mCnapName:Ljava/lang/String;

    return-object v0
.end method

.method public getCnapNamePresentation()I
    .locals 1

    .prologue
    .line 172
    iget v0, p0, Lcom/android/internal/telephony/Connection;->mCnapNamePresentation:I

    return v0
.end method

.method public abstract getConnectTime()J
.end method

.method public abstract getCreateTime()J
.end method

.method public abstract getDisconnectCause()Lcom/android/internal/telephony/Connection$DisconnectCause;
.end method

.method public abstract getDisconnectTime()J
.end method

.method public abstract getDurationMillis()J
.end method

.method public getErrorInfo()Ljava/lang/String;
    .locals 1

    .prologue
    .line 193
    iget-object v0, p0, Lcom/android/internal/telephony/Connection;->errorInfo:Ljava/lang/String;

    return-object v0
.end method

.method public abstract getHoldDurationMillis()J
.end method

.method public getIndex()I
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/telephony/CallStateException;
        }
    .end annotation

    .prologue
    .line 411
    new-instance v0, Lcom/android/internal/telephony/CallStateException;

    const-string v1, "Connection index not assigned"

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/CallStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getNumberPresentation()I
    .locals 1

    .prologue
    .line 180
    iget v0, p0, Lcom/android/internal/telephony/Connection;->numberPresentation:I

    return v0
.end method

.method public getOrigDialString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 163
    const/4 v0, 0x0

    return-object v0
.end method

.method public abstract getPhoneId()I
.end method

.method public abstract getPostDialState()Lcom/android/internal/telephony/Connection$PostDialState;
.end method

.method public abstract getRemainingPostDialString()Ljava/lang/String;
.end method

.method public getState()Lcom/android/internal/telephony/Call$State;
    .locals 2

    .prologue
    .line 298
    invoke-virtual {p0}, Lcom/android/internal/telephony/Connection;->getCall()Lcom/android/internal/telephony/Call;

    move-result-object v0

    .line 300
    .local v0, "c":Lcom/android/internal/telephony/Call;
    if-nez v0, :cond_0

    .line 301
    sget-object v1, Lcom/android/internal/telephony/Call$State;->IDLE:Lcom/android/internal/telephony/Call$State;

    .line 303
    :goto_0
    return-object v1

    :cond_0
    invoke-virtual {v0}, Lcom/android/internal/telephony/Call;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v1

    goto :goto_0
.end method

.method public abstract getUUSInfo()Lcom/android/internal/telephony/UUSInfo;
.end method

.method public getUserData()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 331
    iget-object v0, p0, Lcom/android/internal/telephony/Connection;->mUserData:Ljava/lang/Object;

    return-object v0
.end method

.method public abstract hangup()V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/telephony/CallStateException;
        }
    .end annotation
.end method

.method public isAlive()Z
    .locals 1

    .prologue
    .line 315
    invoke-virtual {p0}, Lcom/android/internal/telephony/Connection;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/telephony/Call$State;->isAlive()Z

    move-result v0

    return v0
.end method

.method public abstract isIncoming()Z
.end method

.method public isRinging()Z
    .locals 1

    .prologue
    .line 323
    invoke-virtual {p0}, Lcom/android/internal/telephony/Connection;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/telephony/Call$State;->isRinging()Z

    move-result v0

    return v0
.end method

.method public isVideoCall()Z
    .locals 1

    .prologue
    .line 449
    iget-boolean v0, p0, Lcom/android/internal/telephony/Connection;->vtFlag:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/telephony/Connection;->callDetails:Lcom/android/internal/telephony/CallDetails;

    invoke-virtual {v0}, Lcom/android/internal/telephony/CallDetails;->isVideoCallType()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public abstract proceedAfterWaitChar()V
.end method

.method public abstract proceedAfterWildChar(Ljava/lang/String;)V
.end method

.method public queryLinkType()I
    .locals 1

    .prologue
    .line 145
    iget v0, p0, Lcom/android/internal/telephony/Connection;->linkType:I

    return v0
.end method

.method public abstract separate()V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/telephony/CallStateException;
        }
    .end annotation
.end method

.method public setConnectTime(J)V
    .locals 2
    .param p1, "timeInMillis"    # J

    .prologue
    .line 250
    sget-object v0, Lcom/android/internal/telephony/Connection;->LOG_TAG:Ljava/lang/String;

    const-string v1, "setConnectTime() not implemented"

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 251
    return-void
.end method

.method public setConnectionDetails(Lcom/android/internal/telephony/CallDetails;)V
    .locals 0
    .param p1, "ConnDetails"    # Lcom/android/internal/telephony/CallDetails;

    .prologue
    .line 197
    iput-object p1, p0, Lcom/android/internal/telephony/Connection;->callDetails:Lcom/android/internal/telephony/CallDetails;

    .line 198
    return-void
.end method

.method public setCreateTime(J)V
    .locals 2
    .param p1, "timeInMillis"    # J

    .prologue
    .line 231
    sget-object v0, Lcom/android/internal/telephony/Connection;->LOG_TAG:Ljava/lang/String;

    const-string v1, "setCreateTime() not implemented"

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 232
    return-void
.end method

.method public setErrorInfo(Ljava/lang/String;)V
    .locals 0
    .param p1, "errorInfo"    # Ljava/lang/String;

    .prologue
    .line 205
    .line 206
    return-void
.end method

.method public setModifyConnectionDetails(Lcom/android/internal/telephony/CallModify;)V
    .locals 0
    .param p1, "modifyConn"    # Lcom/android/internal/telephony/CallModify;

    .prologue
    .line 201
    iput-object p1, p0, Lcom/android/internal/telephony/Connection;->callModifyRequest:Lcom/android/internal/telephony/CallModify;

    .line 202
    return-void
.end method

.method public setUserData(Ljava/lang/Object;)V
    .locals 0
    .param p1, "userdata"    # Ljava/lang/Object;

    .prologue
    .line 339
    iput-object p1, p0, Lcom/android/internal/telephony/Connection;->mUserData:Ljava/lang/Object;

    .line 340
    return-void
.end method

.method public setVTFlag(Z)Z
    .locals 0
    .param p1, "flag"    # Z

    .prologue
    .line 454
    iput-boolean p1, p0, Lcom/android/internal/telephony/Connection;->vtFlag:Z

    return p1
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .prologue
    .line 420
    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x80

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 422
    .local v0, "str":Ljava/lang/StringBuilder;
    sget-object v1, Lcom/android/internal/telephony/Connection;->LOG_TAG:Ljava/lang/String;

    const/4 v2, 0x3

    invoke-static {v1, v2}, Landroid/telephony/Rlog;->isLoggable(Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 423
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "addr: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/android/internal/telephony/Connection;->getAddress()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, " pres.: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0}, Lcom/android/internal/telephony/Connection;->getNumberPresentation()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, " dial: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0}, Lcom/android/internal/telephony/Connection;->getOrigDialString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, " postdial: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0}, Lcom/android/internal/telephony/Connection;->getRemainingPostDialString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, " cnap name: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0}, Lcom/android/internal/telephony/Connection;->getCnapName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0}, Lcom/android/internal/telephony/Connection;->getCnapNamePresentation()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 430
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " incoming: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/android/internal/telephony/Connection;->isIncoming()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, " state: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0}, Lcom/android/internal/telephony/Connection;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, " post dial state: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0}, Lcom/android/internal/telephony/Connection;->getPostDialState()Lcom/android/internal/telephony/Connection$PostDialState;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 433
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method
