.class Landroid/media/AudioService$4;
.super Ljava/lang/Object;
.source "AudioService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/media/AudioService;->showVolumeChangeUi(II)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/media/AudioService;

.field final synthetic val$flags:I

.field final synthetic val$streamType:I


# direct methods
.method constructor <init>(Landroid/media/AudioService;II)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 3695
    iput-object p1, p0, Landroid/media/AudioService$4;->this$0:Landroid/media/AudioService;

    iput p2, p0, Landroid/media/AudioService$4;->val$streamType:I

    iput p3, p0, Landroid/media/AudioService$4;->val$flags:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 3698
    iget-object v1, p0, Landroid/media/AudioService$4;->this$0:Landroid/media/AudioService;

    #getter for: Landroid/media/AudioService;->mUiContext:Landroid/content/Context;
    invoke-static {v1}, Landroid/media/AudioService;->access$400(Landroid/media/AudioService;)Landroid/content/Context;

    move-result-object v1

    if-nez v1, :cond_0

    .line 3699
    iget-object v1, p0, Landroid/media/AudioService$4;->this$0:Landroid/media/AudioService;

    iget-object v2, p0, Landroid/media/AudioService$4;->this$0:Landroid/media/AudioService;

    #getter for: Landroid/media/AudioService;->mContext:Landroid/content/Context;
    invoke-static {v2}, Landroid/media/AudioService;->access$7200(Landroid/media/AudioService;)Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/android/internal/app/ThemeUtils;->createUiContext(Landroid/content/Context;)Landroid/content/Context;

    move-result-object v2

    #setter for: Landroid/media/AudioService;->mUiContext:Landroid/content/Context;
    invoke-static {v1, v2}, Landroid/media/AudioService;->access$402(Landroid/media/AudioService;Landroid/content/Context;)Landroid/content/Context;

    .line 3702
    :cond_0
    iget-object v1, p0, Landroid/media/AudioService$4;->this$0:Landroid/media/AudioService;

    #getter for: Landroid/media/AudioService;->mUiContext:Landroid/content/Context;
    invoke-static {v1}, Landroid/media/AudioService;->access$400(Landroid/media/AudioService;)Landroid/content/Context;

    move-result-object v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Landroid/media/AudioService$4;->this$0:Landroid/media/AudioService;

    #getter for: Landroid/media/AudioService;->mUiContext:Landroid/content/Context;
    invoke-static {v1}, Landroid/media/AudioService;->access$400(Landroid/media/AudioService;)Landroid/content/Context;

    move-result-object v0

    .line 3703
    .local v0, context:Landroid/content/Context;
    :goto_0
    iget-object v1, p0, Landroid/media/AudioService$4;->this$0:Landroid/media/AudioService;

    new-instance v2, Landroid/view/VolumePanel;

    iget-object v3, p0, Landroid/media/AudioService$4;->this$0:Landroid/media/AudioService;

    invoke-direct {v2, v0, v3}, Landroid/view/VolumePanel;-><init>(Landroid/content/Context;Landroid/media/AudioService;)V

    #setter for: Landroid/media/AudioService;->mVolumePanel:Landroid/view/VolumePanel;
    invoke-static {v1, v2}, Landroid/media/AudioService;->access$7902(Landroid/media/AudioService;Landroid/view/VolumePanel;)Landroid/view/VolumePanel;

    .line 3704
    iget-object v1, p0, Landroid/media/AudioService$4;->this$0:Landroid/media/AudioService;

    #getter for: Landroid/media/AudioService;->mVolumePanel:Landroid/view/VolumePanel;
    invoke-static {v1}, Landroid/media/AudioService;->access$7900(Landroid/media/AudioService;)Landroid/view/VolumePanel;

    move-result-object v1

    iget v2, p0, Landroid/media/AudioService$4;->val$streamType:I

    iget v3, p0, Landroid/media/AudioService$4;->val$flags:I

    invoke-virtual {v1, v2, v3}, Landroid/view/VolumePanel;->postVolumeChanged(II)V

    .line 3705
    return-void

    .line 3702
    .end local v0           #context:Landroid/content/Context;
    :cond_1
    iget-object v1, p0, Landroid/media/AudioService$4;->this$0:Landroid/media/AudioService;

    #getter for: Landroid/media/AudioService;->mContext:Landroid/content/Context;
    invoke-static {v1}, Landroid/media/AudioService;->access$7200(Landroid/media/AudioService;)Landroid/content/Context;

    move-result-object v0

    goto :goto_0
.end method
