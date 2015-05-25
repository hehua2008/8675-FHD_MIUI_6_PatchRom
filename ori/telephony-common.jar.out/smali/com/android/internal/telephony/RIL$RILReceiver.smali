.class Lcom/android/internal/telephony/RIL$RILReceiver;
.super Ljava/lang/Object;
.source "RIL.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/RIL;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "RILReceiver"
.end annotation


# instance fields
.field buffer:[B

.field final synthetic this$0:Lcom/android/internal/telephony/RIL;


# direct methods
.method constructor <init>(Lcom/android/internal/telephony/RIL;)V
    .locals 1

    .prologue
    .line 776
    iput-object p1, p0, Lcom/android/internal/telephony/RIL$RILReceiver;->this$0:Lcom/android/internal/telephony/RIL;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 777
    const/16 v0, 0x2000

    new-array v0, v0, [B

    iput-object v0, p0, Lcom/android/internal/telephony/RIL$RILReceiver;->buffer:[B

    .line 778
    return-void
.end method


# virtual methods
.method public run()V
    .locals 14

    .prologue
    const/16 v13, 0x8

    const/4 v12, 0x1

    .line 782
    const/4 v5, 0x0

    .line 785
    .local v5, "retryCount":I
    :goto_0
    :try_start_0
    iget-object v9, p0, Lcom/android/internal/telephony/RIL$RILReceiver;->this$0:Lcom/android/internal/telephony/RIL;

    # getter for: Lcom/android/internal/telephony/RIL;->LOG_TAG:Ljava/lang/String;
    invoke-static {v9}, Lcom/android/internal/telephony/RIL;->access$300(Lcom/android/internal/telephony/RIL;)Ljava/lang/String;

    move-result-object v9

    const-string v10, "for (;;),rilReciver"

    invoke-static {v9, v10}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 786
    iget-object v9, p0, Lcom/android/internal/telephony/RIL$RILReceiver;->this$0:Lcom/android/internal/telephony/RIL;

    iget-boolean v9, v9, Lcom/android/internal/telephony/RIL;->mCloseSocket:Z

    if-ne v9, v12, :cond_0

    .line 787
    iget-object v9, p0, Lcom/android/internal/telephony/RIL$RILReceiver;->this$0:Lcom/android/internal/telephony/RIL;

    iget-object v9, v9, Lcom/android/internal/telephony/RIL;->mReceiverThread:Ljava/lang/Thread;

    invoke-static {}, Ljava/lang/Thread;->interrupted()Z

    .line 890
    :goto_1
    return-void

    .line 790
    :cond_0
    const/4 v6, 0x0

    .line 792
    .local v6, "s":Landroid/net/LocalSocket;
    invoke-static {}, Lcom/yulong/android/modemservice/CPPhoneProperties;->getRildSocketNumType()I

    move-result v9

    if-nez v9, :cond_1

    iget-object v9, p0, Lcom/android/internal/telephony/RIL$RILReceiver;->this$0:Lcom/android/internal/telephony/RIL;

    iget v9, v9, Lcom/android/internal/telephony/RIL;->mPhoneId:I

    const/4 v10, 0x2

    if-eq v9, v10, :cond_2

    :cond_1
    invoke-static {}, Lcom/yulong/android/modemservice/CPPhoneProperties;->getRildSocketNumType()I

    move-result v9

    if-ne v9, v12, :cond_3

    iget-object v9, p0, Lcom/android/internal/telephony/RIL$RILReceiver;->this$0:Lcom/android/internal/telephony/RIL;

    iget v9, v9, Lcom/android/internal/telephony/RIL;->mPhoneId:I

    if-ne v9, v12, :cond_3

    .line 794
    :cond_2
    iget-object v9, p0, Lcom/android/internal/telephony/RIL$RILReceiver;->this$0:Lcom/android/internal/telephony/RIL;

    # getter for: Lcom/android/internal/telephony/RIL;->LOG_TAG:Ljava/lang/String;
    invoke-static {v9}, Lcom/android/internal/telephony/RIL;->access$300(Lcom/android/internal/telephony/RIL;)Ljava/lang/String;

    move-result-object v9

    const-string v10, " only the need socket connect, teturn"

    invoke-static {v9, v10}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 887
    .end local v6    # "s":Landroid/net/LocalSocket;
    :catch_0
    move-exception v8

    .line 888
    .local v8, "tr":Ljava/lang/Throwable;
    iget-object v9, p0, Lcom/android/internal/telephony/RIL$RILReceiver;->this$0:Lcom/android/internal/telephony/RIL;

    # getter for: Lcom/android/internal/telephony/RIL;->LOG_TAG:Ljava/lang/String;
    invoke-static {v9}, Lcom/android/internal/telephony/RIL;->access$300(Lcom/android/internal/telephony/RIL;)Ljava/lang/String;

    move-result-object v9

    const-string v10, "Uncaught exception"

    invoke-static {v9, v10, v8}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1

    .line 798
    .end local v8    # "tr":Ljava/lang/Throwable;
    .restart local v6    # "s":Landroid/net/LocalSocket;
    :cond_3
    :try_start_1
    iget-object v9, p0, Lcom/android/internal/telephony/RIL$RILReceiver;->this$0:Lcom/android/internal/telephony/RIL;

    # getter for: Lcom/android/internal/telephony/RIL;->LOG_TAG:Ljava/lang/String;
    invoke-static {v9}, Lcom/android/internal/telephony/RIL;->access$300(Lcom/android/internal/telephony/RIL;)Ljava/lang/String;

    move-result-object v9

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, " socket SOCKET_NAME_RIL = "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-object v11, p0, Lcom/android/internal/telephony/RIL$RILReceiver;->this$0:Lcom/android/internal/telephony/RIL;

    # getter for: Lcom/android/internal/telephony/RIL;->SOCKET_NAME_RIL:Ljava/lang/String;
    invoke-static {v11}, Lcom/android/internal/telephony/RIL;->access$1400(Lcom/android/internal/telephony/RIL;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 799
    new-instance v7, Landroid/net/LocalSocket;

    invoke-direct {v7}, Landroid/net/LocalSocket;-><init>()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    .line 800
    .end local v6    # "s":Landroid/net/LocalSocket;
    .local v7, "s":Landroid/net/LocalSocket;
    :try_start_2
    new-instance v2, Landroid/net/LocalSocketAddress;

    iget-object v9, p0, Lcom/android/internal/telephony/RIL$RILReceiver;->this$0:Lcom/android/internal/telephony/RIL;

    # getter for: Lcom/android/internal/telephony/RIL;->SOCKET_NAME_RIL:Ljava/lang/String;
    invoke-static {v9}, Lcom/android/internal/telephony/RIL;->access$1400(Lcom/android/internal/telephony/RIL;)Ljava/lang/String;

    move-result-object v9

    sget-object v10, Landroid/net/LocalSocketAddress$Namespace;->RESERVED:Landroid/net/LocalSocketAddress$Namespace;

    invoke-direct {v2, v9, v10}, Landroid/net/LocalSocketAddress;-><init>(Ljava/lang/String;Landroid/net/LocalSocketAddress$Namespace;)V

    .line 802
    .local v2, "l":Landroid/net/LocalSocketAddress;
    invoke-virtual {v7, v2}, Landroid/net/LocalSocket;->connect(Landroid/net/LocalSocketAddress;)V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_7
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_0

    .line 832
    const/4 v5, 0x0

    .line 833
    :try_start_3
    iget-object v9, p0, Lcom/android/internal/telephony/RIL$RILReceiver;->this$0:Lcom/android/internal/telephony/RIL;

    iput-object v7, v9, Lcom/android/internal/telephony/RIL;->mSocket:Landroid/net/LocalSocket;

    .line 835
    iget-object v9, p0, Lcom/android/internal/telephony/RIL$RILReceiver;->this$0:Lcom/android/internal/telephony/RIL;

    # getter for: Lcom/android/internal/telephony/RIL;->LOG_TAG:Ljava/lang/String;
    invoke-static {v9}, Lcom/android/internal/telephony/RIL;->access$300(Lcom/android/internal/telephony/RIL;)Ljava/lang/String;

    move-result-object v9

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Connected to \'"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-object v11, p0, Lcom/android/internal/telephony/RIL$RILReceiver;->this$0:Lcom/android/internal/telephony/RIL;

    # getter for: Lcom/android/internal/telephony/RIL;->SOCKET_NAME_RIL:Ljava/lang/String;
    invoke-static {v11}, Lcom/android/internal/telephony/RIL;->access$1400(Lcom/android/internal/telephony/RIL;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, "\' socket"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/telephony/Rlog;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_0

    .line 836
    const/4 v3, 0x0

    .line 838
    .local v3, "length":I
    :try_start_4
    iget-object v9, p0, Lcom/android/internal/telephony/RIL$RILReceiver;->this$0:Lcom/android/internal/telephony/RIL;

    iget-object v9, v9, Lcom/android/internal/telephony/RIL;->mSocket:Landroid/net/LocalSocket;

    invoke-virtual {v9}, Landroid/net/LocalSocket;->getInputStream()Ljava/io/InputStream;

    move-result-object v1

    .line 843
    .local v1, "is":Ljava/io/InputStream;
    :goto_2
    iget-object v9, p0, Lcom/android/internal/telephony/RIL$RILReceiver;->buffer:[B

    iget-object v10, p0, Lcom/android/internal/telephony/RIL$RILReceiver;->this$0:Lcom/android/internal/telephony/RIL;

    # getter for: Lcom/android/internal/telephony/RIL;->LOG_TAG:Ljava/lang/String;
    invoke-static {v10}, Lcom/android/internal/telephony/RIL;->access$300(Lcom/android/internal/telephony/RIL;)Ljava/lang/String;

    move-result-object v10

    # invokes: Lcom/android/internal/telephony/RIL;->readRilMessage(Ljava/io/InputStream;[BLjava/lang/String;)I
    invoke-static {v1, v9, v10}, Lcom/android/internal/telephony/RIL;->access$1500(Ljava/io/InputStream;[BLjava/lang/String;)I
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_4} :catch_3

    move-result v3

    .line 844
    if-gez v3, :cond_7

    .line 864
    .end local v1    # "is":Ljava/io/InputStream;
    :goto_3
    :try_start_5
    iget-object v9, p0, Lcom/android/internal/telephony/RIL$RILReceiver;->this$0:Lcom/android/internal/telephony/RIL;

    iget-boolean v9, v9, Lcom/android/internal/telephony/RIL;->mCloseSocket:Z

    if-ne v9, v12, :cond_8

    .line 865
    iget-object v9, p0, Lcom/android/internal/telephony/RIL$RILReceiver;->this$0:Lcom/android/internal/telephony/RIL;

    iget-object v9, v9, Lcom/android/internal/telephony/RIL;->mReceiverThread:Ljava/lang/Thread;

    invoke-static {}, Ljava/lang/Thread;->interrupted()Z
    :try_end_5
    .catch Ljava/lang/Throwable; {:try_start_5 .. :try_end_5} :catch_0

    goto/16 :goto_1

    .line 803
    .end local v2    # "l":Landroid/net/LocalSocketAddress;
    .end local v3    # "length":I
    .end local v7    # "s":Landroid/net/LocalSocket;
    .restart local v6    # "s":Landroid/net/LocalSocket;
    :catch_1
    move-exception v0

    .line 805
    .local v0, "ex":Ljava/io/IOException;
    :goto_4
    if-eqz v6, :cond_4

    .line 806
    :try_start_6
    invoke-virtual {v6}, Landroid/net/LocalSocket;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_4
    .catch Ljava/lang/Throwable; {:try_start_6 .. :try_end_6} :catch_0

    .line 815
    :cond_4
    :goto_5
    if-ne v5, v13, :cond_6

    .line 816
    :try_start_7
    iget-object v9, p0, Lcom/android/internal/telephony/RIL$RILReceiver;->this$0:Lcom/android/internal/telephony/RIL;

    # getter for: Lcom/android/internal/telephony/RIL;->LOG_TAG:Ljava/lang/String;
    invoke-static {v9}, Lcom/android/internal/telephony/RIL;->access$300(Lcom/android/internal/telephony/RIL;)Ljava/lang/String;

    move-result-object v9

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Couldn\'t find \'"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-object v11, p0, Lcom/android/internal/telephony/RIL$RILReceiver;->this$0:Lcom/android/internal/telephony/RIL;

    # getter for: Lcom/android/internal/telephony/RIL;->SOCKET_NAME_RIL:Ljava/lang/String;
    invoke-static {v11}, Lcom/android/internal/telephony/RIL;->access$1400(Lcom/android/internal/telephony/RIL;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, "\' socket after "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, " times, continuing to retry silently"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_7
    .catch Ljava/lang/Throwable; {:try_start_7 .. :try_end_7} :catch_0

    .line 825
    :cond_5
    :goto_6
    const-wide/16 v9, 0xfa0

    :try_start_8
    invoke-static {v9, v10}, Ljava/lang/Thread;->sleep(J)V
    :try_end_8
    .catch Ljava/lang/InterruptedException; {:try_start_8 .. :try_end_8} :catch_5
    .catch Ljava/lang/Throwable; {:try_start_8 .. :try_end_8} :catch_0

    .line 828
    :goto_7
    add-int/lit8 v5, v5, 0x1

    .line 829
    goto/16 :goto_0

    .line 819
    :cond_6
    if-lez v5, :cond_5

    if-ge v5, v13, :cond_5

    .line 820
    :try_start_9
    iget-object v9, p0, Lcom/android/internal/telephony/RIL$RILReceiver;->this$0:Lcom/android/internal/telephony/RIL;

    # getter for: Lcom/android/internal/telephony/RIL;->LOG_TAG:Ljava/lang/String;
    invoke-static {v9}, Lcom/android/internal/telephony/RIL;->access$300(Lcom/android/internal/telephony/RIL;)Ljava/lang/String;

    move-result-object v9

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Couldn\'t find \'"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-object v11, p0, Lcom/android/internal/telephony/RIL$RILReceiver;->this$0:Lcom/android/internal/telephony/RIL;

    # getter for: Lcom/android/internal/telephony/RIL;->SOCKET_NAME_RIL:Ljava/lang/String;
    invoke-static {v11}, Lcom/android/internal/telephony/RIL;->access$1400(Lcom/android/internal/telephony/RIL;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, "\' socket; retrying after timeout"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/telephony/Rlog;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_9
    .catch Ljava/lang/Throwable; {:try_start_9 .. :try_end_9} :catch_0

    goto :goto_6

    .line 849
    .end local v0    # "ex":Ljava/io/IOException;
    .end local v6    # "s":Landroid/net/LocalSocket;
    .restart local v1    # "is":Ljava/io/InputStream;
    .restart local v2    # "l":Landroid/net/LocalSocketAddress;
    .restart local v3    # "length":I
    .restart local v7    # "s":Landroid/net/LocalSocket;
    :cond_7
    :try_start_a
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v4

    .line 850
    .local v4, "p":Landroid/os/Parcel;
    iget-object v9, p0, Lcom/android/internal/telephony/RIL$RILReceiver;->buffer:[B

    const/4 v10, 0x0

    invoke-virtual {v4, v9, v10, v3}, Landroid/os/Parcel;->unmarshall([BII)V

    .line 851
    const/4 v9, 0x0

    invoke-virtual {v4, v9}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 854
    iget-object v9, p0, Lcom/android/internal/telephony/RIL$RILReceiver;->this$0:Lcom/android/internal/telephony/RIL;

    # invokes: Lcom/android/internal/telephony/RIL;->processResponse(Landroid/os/Parcel;)V
    invoke-static {v9, v4}, Lcom/android/internal/telephony/RIL;->access$1600(Lcom/android/internal/telephony/RIL;Landroid/os/Parcel;)V

    .line 855
    invoke-virtual {v4}, Landroid/os/Parcel;->recycle()V
    :try_end_a
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_2
    .catch Ljava/lang/Throwable; {:try_start_a .. :try_end_a} :catch_3

    goto/16 :goto_2

    .line 857
    .end local v1    # "is":Ljava/io/InputStream;
    .end local v4    # "p":Landroid/os/Parcel;
    :catch_2
    move-exception v0

    .line 858
    .restart local v0    # "ex":Ljava/io/IOException;
    :try_start_b
    iget-object v9, p0, Lcom/android/internal/telephony/RIL$RILReceiver;->this$0:Lcom/android/internal/telephony/RIL;

    # getter for: Lcom/android/internal/telephony/RIL;->LOG_TAG:Ljava/lang/String;
    invoke-static {v9}, Lcom/android/internal/telephony/RIL;->access$300(Lcom/android/internal/telephony/RIL;)Ljava/lang/String;

    move-result-object v9

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "\'"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-object v11, p0, Lcom/android/internal/telephony/RIL$RILReceiver;->this$0:Lcom/android/internal/telephony/RIL;

    # getter for: Lcom/android/internal/telephony/RIL;->SOCKET_NAME_RIL:Ljava/lang/String;
    invoke-static {v11}, Lcom/android/internal/telephony/RIL;->access$1400(Lcom/android/internal/telephony/RIL;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, "\' socket closed"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10, v0}, Landroid/telephony/Rlog;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_3

    .line 860
    .end local v0    # "ex":Ljava/io/IOException;
    :catch_3
    move-exception v8

    .line 861
    .restart local v8    # "tr":Ljava/lang/Throwable;
    iget-object v9, p0, Lcom/android/internal/telephony/RIL$RILReceiver;->this$0:Lcom/android/internal/telephony/RIL;

    # getter for: Lcom/android/internal/telephony/RIL;->LOG_TAG:Ljava/lang/String;
    invoke-static {v9}, Lcom/android/internal/telephony/RIL;->access$300(Lcom/android/internal/telephony/RIL;)Ljava/lang/String;

    move-result-object v9

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Uncaught exception read length="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, "Exception:"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v8}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_3

    .line 869
    .end local v8    # "tr":Ljava/lang/Throwable;
    :cond_8
    invoke-static {}, Lcom/yulong/android/modemservice/CPPhoneProperties;->isRildDisconnectNotify()I

    move-result v9

    if-ne v9, v12, :cond_9

    .line 870
    const-string v9, "modem_rild_exception"

    const/4 v10, 0x0

    const/4 v11, 0x0

    invoke-static {v9, v10, v11}, Lcom/yulong/android/internal/telephony/TelephonyCommFeature;->notifyToBugReport(Ljava/lang/String;Ljava/lang/String;Landroid/app/ApplicationErrorReport$CrashInfo;)V

    .line 874
    :cond_9
    iget-object v9, p0, Lcom/android/internal/telephony/RIL$RILReceiver;->this$0:Lcom/android/internal/telephony/RIL;

    # getter for: Lcom/android/internal/telephony/RIL;->LOG_TAG:Ljava/lang/String;
    invoke-static {v9}, Lcom/android/internal/telephony/RIL;->access$300(Lcom/android/internal/telephony/RIL;)Ljava/lang/String;

    move-result-object v9

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Disconnected from \'"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-object v11, p0, Lcom/android/internal/telephony/RIL$RILReceiver;->this$0:Lcom/android/internal/telephony/RIL;

    # getter for: Lcom/android/internal/telephony/RIL;->SOCKET_NAME_RIL:Ljava/lang/String;
    invoke-static {v11}, Lcom/android/internal/telephony/RIL;->access$1400(Lcom/android/internal/telephony/RIL;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, "\' socket"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/telephony/Rlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 875
    iget-object v9, p0, Lcom/android/internal/telephony/RIL$RILReceiver;->this$0:Lcom/android/internal/telephony/RIL;

    const/4 v10, 0x0

    # setter for: Lcom/android/internal/telephony/RIL;->mMuxDataState:I
    invoke-static {v9, v10}, Lcom/android/internal/telephony/RIL;->access$902(Lcom/android/internal/telephony/RIL;I)I
    :try_end_b
    .catch Ljava/lang/Throwable; {:try_start_b .. :try_end_b} :catch_0

    .line 878
    :try_start_c
    iget-object v9, p0, Lcom/android/internal/telephony/RIL$RILReceiver;->this$0:Lcom/android/internal/telephony/RIL;

    iget-object v9, v9, Lcom/android/internal/telephony/RIL;->mSocket:Landroid/net/LocalSocket;

    invoke-virtual {v9}, Landroid/net/LocalSocket;->close()V
    :try_end_c
    .catch Ljava/io/IOException; {:try_start_c .. :try_end_c} :catch_6
    .catch Ljava/lang/Throwable; {:try_start_c .. :try_end_c} :catch_0

    .line 882
    :goto_8
    :try_start_d
    iget-object v9, p0, Lcom/android/internal/telephony/RIL$RILReceiver;->this$0:Lcom/android/internal/telephony/RIL;

    const/4 v10, 0x0

    iput-object v10, v9, Lcom/android/internal/telephony/RIL;->mSocket:Landroid/net/LocalSocket;

    .line 883
    invoke-static {}, Lcom/android/internal/telephony/RILRequest;->resetSerial()V

    .line 886
    iget-object v9, p0, Lcom/android/internal/telephony/RIL$RILReceiver;->this$0:Lcom/android/internal/telephony/RIL;

    const/4 v10, 0x1

    const/4 v11, 0x0

    # invokes: Lcom/android/internal/telephony/RIL;->clearRequestsList(IZ)V
    invoke-static {v9, v10, v11}, Lcom/android/internal/telephony/RIL;->access$800(Lcom/android/internal/telephony/RIL;IZ)V
    :try_end_d
    .catch Ljava/lang/Throwable; {:try_start_d .. :try_end_d} :catch_0

    goto/16 :goto_0

    .line 808
    .end local v2    # "l":Landroid/net/LocalSocketAddress;
    .end local v3    # "length":I
    .end local v7    # "s":Landroid/net/LocalSocket;
    .restart local v0    # "ex":Ljava/io/IOException;
    .restart local v6    # "s":Landroid/net/LocalSocket;
    :catch_4
    move-exception v9

    goto/16 :goto_5

    .line 826
    :catch_5
    move-exception v9

    goto/16 :goto_7

    .line 879
    .end local v0    # "ex":Ljava/io/IOException;
    .end local v6    # "s":Landroid/net/LocalSocket;
    .restart local v2    # "l":Landroid/net/LocalSocketAddress;
    .restart local v3    # "length":I
    .restart local v7    # "s":Landroid/net/LocalSocket;
    :catch_6
    move-exception v9

    goto :goto_8

    .line 803
    .end local v2    # "l":Landroid/net/LocalSocketAddress;
    .end local v3    # "length":I
    :catch_7
    move-exception v0

    move-object v6, v7

    .end local v7    # "s":Landroid/net/LocalSocket;
    .restart local v6    # "s":Landroid/net/LocalSocket;
    goto/16 :goto_4
.end method
