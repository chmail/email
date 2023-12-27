.class Ldroidninja/filepicker/MediaDetailsActivity$1;
.super Landroid/support/v7/widget/RecyclerView$OnScrollListener;
.source "MediaDetailsActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ldroidninja/filepicker/MediaDetailsActivity;->setUpView(Ldroidninja/filepicker/models/PhotoDirectory;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Ldroidninja/filepicker/MediaDetailsActivity;


# direct methods
.method constructor <init>(Ldroidninja/filepicker/MediaDetailsActivity;)V
    .locals 0
    .param p1, "this$0"    # Ldroidninja/filepicker/MediaDetailsActivity;

    .prologue
    .line 95
    iput-object p1, p0, Ldroidninja/filepicker/MediaDetailsActivity$1;->this$0:Ldroidninja/filepicker/MediaDetailsActivity;

    invoke-direct {p0}, Landroid/support/v7/widget/RecyclerView$OnScrollListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onScrollStateChanged(Landroid/support/v7/widget/RecyclerView;I)V
    .locals 1
    .param p1, "recyclerView"    # Landroid/support/v7/widget/RecyclerView;
    .param p2, "newState"    # I

    .prologue
    .line 106
    if-nez p2, :cond_0

    .line 107
    iget-object v0, p0, Ldroidninja/filepicker/MediaDetailsActivity$1;->this$0:Ldroidninja/filepicker/MediaDetailsActivity;

    invoke-static {v0}, Ldroidninja/filepicker/MediaDetailsActivity;->access$100(Ldroidninja/filepicker/MediaDetailsActivity;)V

    .line 109
    :cond_0
    return-void
.end method

.method public onScrolled(Landroid/support/v7/widget/RecyclerView;II)V
    .locals 2
    .param p1, "recyclerView"    # Landroid/support/v7/widget/RecyclerView;
    .param p2, "dx"    # I
    .param p3, "dy"    # I

    .prologue
    .line 97
    invoke-super {p0, p1, p2, p3}, Landroid/support/v7/widget/RecyclerView$OnScrollListener;->onScrolled(Landroid/support/v7/widget/RecyclerView;II)V

    .line 99
    invoke-static {p3}, Ljava/lang/Math;->abs(I)I

    move-result v0

    const/16 v1, 0x1e

    if-le v0, v1, :cond_0

    .line 100
    iget-object v0, p0, Ldroidninja/filepicker/MediaDetailsActivity$1;->this$0:Ldroidninja/filepicker/MediaDetailsActivity;

    invoke-static {v0}, Ldroidninja/filepicker/MediaDetailsActivity;->access$000(Ldroidninja/filepicker/MediaDetailsActivity;)Lcom/bumptech/glide/RequestManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/bumptech/glide/RequestManager;->pauseRequests()V

    .line 104
    :goto_0
    return-void

    .line 102
    :cond_0
    iget-object v0, p0, Ldroidninja/filepicker/MediaDetailsActivity$1;->this$0:Ldroidninja/filepicker/MediaDetailsActivity;

    invoke-static {v0}, Ldroidninja/filepicker/MediaDetailsActivity;->access$100(Ldroidninja/filepicker/MediaDetailsActivity;)V

    goto :goto_0
.end method
