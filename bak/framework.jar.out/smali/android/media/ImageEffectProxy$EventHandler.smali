.class Landroid/media/ImageEffectProxy$EventHandler;
.super Landroid/os/Handler;
.source "ImageEffectProxy.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/media/ImageEffectProxy;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "EventHandler"
.end annotation


# instance fields
.field private mImageEffectProxy:Landroid/media/ImageEffectProxy;

.field final synthetic this$0:Landroid/media/ImageEffectProxy;


# direct methods
.method public constructor <init>(Landroid/media/ImageEffectProxy;Landroid/media/ImageEffectProxy;Landroid/os/Looper;)V
    .locals 0
    .param p2, "mr"    # Landroid/media/ImageEffectProxy;
    .param p3, "looper"    # Landroid/os/Looper;

    .prologue
    .line 134
    iput-object p1, p0, Landroid/media/ImageEffectProxy$EventHandler;->this$0:Landroid/media/ImageEffectProxy;

    .line 135
    invoke-direct {p0, p3}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 136
    iput-object p2, p0, Landroid/media/ImageEffectProxy$EventHandler;->mImageEffectProxy:Landroid/media/ImageEffectProxy;

    .line 137
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 5
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 142
    const-string v0, "ImageEffectProxy"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ">>>>>>>>>>the msg type "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p1, Landroid/os/Message;->what:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "----msg.arg1 = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p1, Landroid/os/Message;->arg1:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "----msg.arg2 = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p1, Landroid/os/Message;->arg2:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 143
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 175
    :pswitch_0
    const-string v0, "ImageEffectProxy"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "the generalmessage type "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p1, Landroid/os/Message;->what:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 176
    iget-object v0, p0, Landroid/media/ImageEffectProxy$EventHandler;->this$0:Landroid/media/ImageEffectProxy;

    # getter for: Landroid/media/ImageEffectProxy;->mGeneralcb:Landroid/media/ImageEffectProxy$GeneticCallback;
    invoke-static {v0}, Landroid/media/ImageEffectProxy;->access$600(Landroid/media/ImageEffectProxy;)Landroid/media/ImageEffectProxy$GeneticCallback;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 177
    iget-object v0, p0, Landroid/media/ImageEffectProxy$EventHandler;->this$0:Landroid/media/ImageEffectProxy;

    # getter for: Landroid/media/ImageEffectProxy;->mGeneralcb:Landroid/media/ImageEffectProxy$GeneticCallback;
    invoke-static {v0}, Landroid/media/ImageEffectProxy;->access$600(Landroid/media/ImageEffectProxy;)Landroid/media/ImageEffectProxy$GeneticCallback;

    move-result-object v1

    iget v2, p1, Landroid/os/Message;->what:I

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    iget v3, p1, Landroid/os/Message;->arg1:I

    iget v4, p1, Landroid/os/Message;->arg2:I

    invoke-interface {v1, v2, v0, v3, v4}, Landroid/media/ImageEffectProxy$GeneticCallback;->onGeneralCallback(ILjava/lang/String;II)V

    .line 181
    :cond_0
    :goto_0
    return-void

    .line 145
    :pswitch_1
    iget-object v0, p0, Landroid/media/ImageEffectProxy$EventHandler;->this$0:Landroid/media/ImageEffectProxy;

    # getter for: Landroid/media/ImageEffectProxy;->mTrackObjectCallback:Landroid/media/ImageEffectProxy$TrackObjectCallback;
    invoke-static {v0}, Landroid/media/ImageEffectProxy;->access$000(Landroid/media/ImageEffectProxy;)Landroid/media/ImageEffectProxy$TrackObjectCallback;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 146
    iget-object v0, p0, Landroid/media/ImageEffectProxy$EventHandler;->this$0:Landroid/media/ImageEffectProxy;

    # getter for: Landroid/media/ImageEffectProxy;->mTrackObjectCallback:Landroid/media/ImageEffectProxy$TrackObjectCallback;
    invoke-static {v0}, Landroid/media/ImageEffectProxy;->access$000(Landroid/media/ImageEffectProxy;)Landroid/media/ImageEffectProxy$TrackObjectCallback;

    move-result-object v1

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    iget-object v2, p0, Landroid/media/ImageEffectProxy$EventHandler;->mImageEffectProxy:Landroid/media/ImageEffectProxy;

    invoke-interface {v1, v0, v2}, Landroid/media/ImageEffectProxy$TrackObjectCallback;->onTrackPos(Ljava/lang/String;Landroid/media/ImageEffectProxy;)V

    goto :goto_0

    .line 150
    :pswitch_2
    iget-object v0, p0, Landroid/media/ImageEffectProxy$EventHandler;->this$0:Landroid/media/ImageEffectProxy;

    # getter for: Landroid/media/ImageEffectProxy;->mFaceInfoCallback:Landroid/media/ImageEffectProxy$FaceInfoCallback;
    invoke-static {v0}, Landroid/media/ImageEffectProxy;->access$100(Landroid/media/ImageEffectProxy;)Landroid/media/ImageEffectProxy$FaceInfoCallback;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 151
    iget-object v0, p0, Landroid/media/ImageEffectProxy$EventHandler;->this$0:Landroid/media/ImageEffectProxy;

    # getter for: Landroid/media/ImageEffectProxy;->mFaceInfoCallback:Landroid/media/ImageEffectProxy$FaceInfoCallback;
    invoke-static {v0}, Landroid/media/ImageEffectProxy;->access$100(Landroid/media/ImageEffectProxy;)Landroid/media/ImageEffectProxy$FaceInfoCallback;

    move-result-object v1

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    iget-object v2, p0, Landroid/media/ImageEffectProxy$EventHandler;->mImageEffectProxy:Landroid/media/ImageEffectProxy;

    invoke-interface {v1, v0, v2}, Landroid/media/ImageEffectProxy$FaceInfoCallback;->onFaceInfo(Ljava/lang/String;Landroid/media/ImageEffectProxy;)V

    goto :goto_0

    .line 155
    :pswitch_3
    iget-object v0, p0, Landroid/media/ImageEffectProxy$EventHandler;->this$0:Landroid/media/ImageEffectProxy;

    # getter for: Landroid/media/ImageEffectProxy;->mProcessCallback:Landroid/media/ImageEffectProxy$ProcessCallback;
    invoke-static {v0}, Landroid/media/ImageEffectProxy;->access$200(Landroid/media/ImageEffectProxy;)Landroid/media/ImageEffectProxy$ProcessCallback;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 156
    iget-object v0, p0, Landroid/media/ImageEffectProxy$EventHandler;->this$0:Landroid/media/ImageEffectProxy;

    # getter for: Landroid/media/ImageEffectProxy;->mProcessCallback:Landroid/media/ImageEffectProxy$ProcessCallback;
    invoke-static {v0}, Landroid/media/ImageEffectProxy;->access$200(Landroid/media/ImageEffectProxy;)Landroid/media/ImageEffectProxy$ProcessCallback;

    move-result-object v0

    iget v1, p1, Landroid/os/Message;->arg1:I

    iget-object v2, p0, Landroid/media/ImageEffectProxy$EventHandler;->mImageEffectProxy:Landroid/media/ImageEffectProxy;

    invoke-interface {v0, v1, v2}, Landroid/media/ImageEffectProxy$ProcessCallback;->onProcess(ILandroid/media/ImageEffectProxy;)V

    goto :goto_0

    .line 160
    :pswitch_4
    iget-object v0, p0, Landroid/media/ImageEffectProxy$EventHandler;->this$0:Landroid/media/ImageEffectProxy;

    # getter for: Landroid/media/ImageEffectProxy;->mPostViewCallback:Landroid/media/ImageEffectProxy$PostViewCallback;
    invoke-static {v0}, Landroid/media/ImageEffectProxy;->access$300(Landroid/media/ImageEffectProxy;)Landroid/media/ImageEffectProxy$PostViewCallback;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 161
    iget-object v0, p0, Landroid/media/ImageEffectProxy$EventHandler;->this$0:Landroid/media/ImageEffectProxy;

    # getter for: Landroid/media/ImageEffectProxy;->mPostViewCallback:Landroid/media/ImageEffectProxy$PostViewCallback;
    invoke-static {v0}, Landroid/media/ImageEffectProxy;->access$300(Landroid/media/ImageEffectProxy;)Landroid/media/ImageEffectProxy$PostViewCallback;

    move-result-object v1

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, [I

    check-cast v0, [I

    iget v2, p1, Landroid/os/Message;->arg1:I

    iget v3, p1, Landroid/os/Message;->arg2:I

    iget-object v4, p0, Landroid/media/ImageEffectProxy$EventHandler;->mImageEffectProxy:Landroid/media/ImageEffectProxy;

    invoke-interface {v1, v0, v2, v3, v4}, Landroid/media/ImageEffectProxy$PostViewCallback;->onDataPostView([IIILandroid/media/ImageEffectProxy;)V

    goto :goto_0

    .line 165
    :pswitch_5
    iget-object v0, p0, Landroid/media/ImageEffectProxy$EventHandler;->this$0:Landroid/media/ImageEffectProxy;

    # getter for: Landroid/media/ImageEffectProxy;->mJpegDataCallback:Landroid/media/ImageEffectProxy$JpegDataCallback;
    invoke-static {v0}, Landroid/media/ImageEffectProxy;->access$400(Landroid/media/ImageEffectProxy;)Landroid/media/ImageEffectProxy$JpegDataCallback;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 166
    iget-object v0, p0, Landroid/media/ImageEffectProxy$EventHandler;->this$0:Landroid/media/ImageEffectProxy;

    # getter for: Landroid/media/ImageEffectProxy;->mJpegDataCallback:Landroid/media/ImageEffectProxy$JpegDataCallback;
    invoke-static {v0}, Landroid/media/ImageEffectProxy;->access$400(Landroid/media/ImageEffectProxy;)Landroid/media/ImageEffectProxy$JpegDataCallback;

    move-result-object v1

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, [B

    check-cast v0, [B

    iget v2, p1, Landroid/os/Message;->arg1:I

    iget v3, p1, Landroid/os/Message;->arg2:I

    iget-object v4, p0, Landroid/media/ImageEffectProxy$EventHandler;->mImageEffectProxy:Landroid/media/ImageEffectProxy;

    invoke-interface {v1, v0, v2, v3, v4}, Landroid/media/ImageEffectProxy$JpegDataCallback;->onJpegData([BIILandroid/media/ImageEffectProxy;)V

    goto/16 :goto_0

    .line 170
    :pswitch_6
    iget-object v0, p0, Landroid/media/ImageEffectProxy$EventHandler;->this$0:Landroid/media/ImageEffectProxy;

    # getter for: Landroid/media/ImageEffectProxy;->mFaceDataCallback:Landroid/media/ImageEffectProxy$FaceDataCallback;
    invoke-static {v0}, Landroid/media/ImageEffectProxy;->access$500(Landroid/media/ImageEffectProxy;)Landroid/media/ImageEffectProxy$FaceDataCallback;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 171
    iget-object v0, p0, Landroid/media/ImageEffectProxy$EventHandler;->this$0:Landroid/media/ImageEffectProxy;

    # getter for: Landroid/media/ImageEffectProxy;->mFaceDataCallback:Landroid/media/ImageEffectProxy$FaceDataCallback;
    invoke-static {v0}, Landroid/media/ImageEffectProxy;->access$500(Landroid/media/ImageEffectProxy;)Landroid/media/ImageEffectProxy$FaceDataCallback;

    move-result-object v1

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, [I

    check-cast v0, [I

    iget v2, p1, Landroid/os/Message;->arg1:I

    iget v3, p1, Landroid/os/Message;->arg2:I

    iget-object v4, p0, Landroid/media/ImageEffectProxy$EventHandler;->mImageEffectProxy:Landroid/media/ImageEffectProxy;

    invoke-interface {v1, v0, v2, v3, v4}, Landroid/media/ImageEffectProxy$FaceDataCallback;->onFaceData([IIILandroid/media/ImageEffectProxy;)V

    goto/16 :goto_0

    .line 143
    :pswitch_data_0
    .packed-switch 0x64
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_6
        :pswitch_4
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_5
    .end packed-switch
.end method
