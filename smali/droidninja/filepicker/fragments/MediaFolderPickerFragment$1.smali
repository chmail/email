.class Ldroidninja/filepicker/fragments/MediaFolderPickerFragment$1;
.super Landroid/support/v7/widget/RecyclerView$OnScrollListener;
.source "MediaFolderPickerFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ldroidninja/filepicker/fragments/MediaFolderPickerFragment;->initView(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Ldroidninja/filepicker/fragments/MediaFolderPickerFragment;


# direct methods
.method constructor <init>(Ldroidninja/filepicker/fragments/MediaFolderPickerFragment;)V
    .locals 0
    .param p1, "this$0"    # Ldroidninja/filepicker/fragments/MediaFolderPickerFragment;

    .prologue
    .line 118
    iput-object p1, p0, Ldroidninja/filepicker/fragments/MediaFolderPickerFragment$1;->this$0:Ldroidninja/filepicker/fragments/MediaFolderPickerFragment;

    invoke-direct {p0}, Landroid/support/v7/widget/RecyclerView$OnScrollListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onScrollStateChanged(Landroid/support/v7/widget/RecyclerView;I)V
    .locals 1
    .param p1, "recyclerView"    # Landroid/support/v7/widget/RecyclerView;
    .param p2, "newState"    # I

    .prologue
    .line 129
    if-nez p2, :cond_0

    .line 130
    iget-object v0, p0, Ldroidninja/filepicker/fragments/MediaFolderPickerFragment$1;->this$0:Ldroidninja/filepicker/fragments/MediaFolderPickerFragment;

    invoke-static {v0}, Ldroidninja/filepicker/fragments/MediaFolderPickerFragment;->access$100(Ldroidninja/filepicker/fragments/MediaFolderPickerFragment;)V

    .line 132
    :cond_0
    return-void
.end method

.method public onScrolled(Landroid/support/v7/widget/RecyclerView;II)V
    .locals 2
    .param p1, "recyclerView"    # Landroid/support/v7/widget/RecyclerView;
    .param p2, "dx"    # I
    .param p3, "dy"    # I

    .prologue
    .line 120
    invoke-super {p0, p1, p2, p3}, Landroid/support/v7/widget/RecyclerView$OnScrollListener;->onScrolled(Landroid/support/v7/widget/RecyclerView;II)V

    .line 122
    invoke-static {p3}, Ljava/lang/Math;->abs(I)I

    move-result v0

    const/16 v1, 0x1e

    if-le v0, v1, :cond_0

    .line 123
    iget-object v0, p0, Ldroidninja/filepicker/fragments/MediaFolderPickerFragment$1;->this$0:Ldroidninja/filepicker/fragments/MediaFolderPickerFragment;

    invoke-static {v0}, Ldroidninja/filepicker/fragments/MediaFolderPickerFragment;->access$000(Ldroidninja/filepicker/fragments/MediaFolderPickerFragment;)Lcom/bumptech/glide/RequestManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/bumptech/glide/RequestManager;->pauseRequests()V

    .line 127
    :goto_0
    return-void

    .line 125
    :cond_0
    iget-object v0, p0, Ldroidninja/filepicker/fragments/MediaFolderPickerFragment$1;->this$0:Ldroidninja/filepicker/fragments/MediaFolderPickerFragment;

    invoke-static {v0}, Ldroidninja/filepicker/fragments/MediaFolderPickerFragment;->access$100(Ldroidninja/filepicker/fragments/MediaFolderPickerFragment;)V

    goto :goto_0
.end method
