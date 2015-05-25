.class public Lcom/android/server/RecordRebootLogManager;
.super Ljava/lang/Object;
.source "RecordRebootLogManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/RecordRebootLogManager$RebootLog;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "RecordRebootLogManager"

.field private static mInstance:Lcom/android/server/RecordRebootLogManager;


# instance fields
.field private rebootLog:Lcom/android/server/YulongRecordLog;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 32
    new-instance v0, Lcom/android/server/RecordRebootLogManager;

    invoke-direct {v0}, Lcom/android/server/RecordRebootLogManager;-><init>()V

    sput-object v0, Lcom/android/server/RecordRebootLogManager;->mInstance:Lcom/android/server/RecordRebootLogManager;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .prologue
    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    new-instance v0, Lcom/android/server/RecordRebootLogManager$RebootLog;

    invoke-direct {v0, p0}, Lcom/android/server/RecordRebootLogManager$RebootLog;-><init>(Lcom/android/server/RecordRebootLogManager;)V

    iput-object v0, p0, Lcom/android/server/RecordRebootLogManager;->rebootLog:Lcom/android/server/YulongRecordLog;

    .line 37
    return-void
.end method

.method public static getInstance()Lcom/android/server/RecordRebootLogManager;
    .locals 1

    .prologue
    .line 40
    sget-object v0, Lcom/android/server/RecordRebootLogManager;->mInstance:Lcom/android/server/RecordRebootLogManager;

    return-object v0
.end method


# virtual methods
.method public record(Ljava/lang/String;)V
    .locals 1
    .param p1, "message"    # Ljava/lang/String;

    .prologue
    .line 44
    iget-object v0, p0, Lcom/android/server/RecordRebootLogManager;->rebootLog:Lcom/android/server/YulongRecordLog;

    invoke-virtual {v0, p1}, Lcom/android/server/YulongRecordLog;->record(Ljava/lang/String;)V

    .line 45
    return-void
.end method
