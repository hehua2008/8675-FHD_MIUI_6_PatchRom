.class public Lcom/android/telephony/modemaccess/ModemItemException;
.super Ljava/lang/RuntimeException;
.source "ModemItemException.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/telephony/modemaccess/ModemItemException$Error;
    }
.end annotation


# instance fields
.field private e:Lcom/android/telephony/modemaccess/ModemItemException$Error;


# direct methods
.method public constructor <init>(Lcom/android/telephony/modemaccess/ModemItemException$Error;)V
    .locals 1
    .param p1, "e"    # Lcom/android/telephony/modemaccess/ModemItemException$Error;

    .prologue
    .line 29
    invoke-virtual {p1}, Lcom/android/telephony/modemaccess/ModemItemException$Error;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .line 30
    iput-object p1, p0, Lcom/android/telephony/modemaccess/ModemItemException;->e:Lcom/android/telephony/modemaccess/ModemItemException$Error;

    .line 31
    return-void
.end method


# virtual methods
.method public getCommandError()Lcom/android/telephony/modemaccess/ModemItemException$Error;
    .locals 1

    .prologue
    .line 34
    iget-object v0, p0, Lcom/android/telephony/modemaccess/ModemItemException;->e:Lcom/android/telephony/modemaccess/ModemItemException$Error;

    return-object v0
.end method
