.class public Ldroidninja/filepicker/adapters/FolderGridAdapter$PhotoViewHolder;
.super Landroid/support/v7/widget/RecyclerView$ViewHolder;
.source "FolderGridAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ldroidninja/filepicker/adapters/FolderGridAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "PhotoViewHolder"
.end annotation


# instance fields
.field bottomOverlay:Landroid/view/View;

.field folderCount:Landroid/widget/TextView;

.field folderTitle:Landroid/widget/TextView;

.field imageView:Landroid/widget/ImageView;

.field selectBg:Landroid/view/View;


# direct methods
.method public constructor <init>(Landroid/view/View;)V
    .locals 1
    .param p1, "itemView"    # Landroid/view/View;

    .prologue
    .line 135
    invoke-direct {p0, p1}, Landroid/support/v7/widget/RecyclerView$ViewHolder;-><init>(Landroid/view/View;)V

    .line 136
    sget v0, Ldroidninja/filepicker/R$id;->iv_photo:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Ldroidninja/filepicker/adapters/FolderGridAdapter$PhotoViewHolder;->imageView:Landroid/widget/ImageView;

    .line 137
    sget v0, Ldroidninja/filepicker/R$id;->folder_title:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Ldroidninja/filepicker/adapters/FolderGridAdapter$PhotoViewHolder;->folderTitle:Landroid/widget/TextView;

    .line 138
    sget v0, Ldroidninja/filepicker/R$id;->folder_count:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Ldroidninja/filepicker/adapters/FolderGridAdapter$PhotoViewHolder;->folderCount:Landroid/widget/TextView;

    .line 139
    sget v0, Ldroidninja/filepicker/R$id;->bottomOverlay:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Ldroidninja/filepicker/adapters/FolderGridAdapter$PhotoViewHolder;->bottomOverlay:Landroid/view/View;

    .line 140
    sget v0, Ldroidninja/filepicker/R$id;->transparent_bg:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Ldroidninja/filepicker/adapters/FolderGridAdapter$PhotoViewHolder;->selectBg:Landroid/view/View;

    .line 141
    return-void
.end method
