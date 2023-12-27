.class public Ldroidninja/filepicker/adapters/FileListAdapter$FileViewHolder;
.super Landroid/support/v7/widget/RecyclerView$ViewHolder;
.source "FileListAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ldroidninja/filepicker/adapters/FileListAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "FileViewHolder"
.end annotation


# instance fields
.field checkBox:Ldroidninja/filepicker/views/SmoothCheckBox;

.field fileNameTextView:Landroid/widget/TextView;

.field fileSizeTextView:Landroid/widget/TextView;

.field imageView:Landroid/widget/ImageView;


# direct methods
.method public constructor <init>(Landroid/view/View;)V
    .locals 1
    .param p1, "itemView"    # Landroid/view/View;

    .prologue
    .line 119
    invoke-direct {p0, p1}, Landroid/support/v7/widget/RecyclerView$ViewHolder;-><init>(Landroid/view/View;)V

    .line 120
    sget v0, Ldroidninja/filepicker/R$id;->checkbox:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Ldroidninja/filepicker/views/SmoothCheckBox;

    iput-object v0, p0, Ldroidninja/filepicker/adapters/FileListAdapter$FileViewHolder;->checkBox:Ldroidninja/filepicker/views/SmoothCheckBox;

    .line 121
    sget v0, Ldroidninja/filepicker/R$id;->file_iv:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Ldroidninja/filepicker/adapters/FileListAdapter$FileViewHolder;->imageView:Landroid/widget/ImageView;

    .line 122
    sget v0, Ldroidninja/filepicker/R$id;->file_name_tv:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Ldroidninja/filepicker/adapters/FileListAdapter$FileViewHolder;->fileNameTextView:Landroid/widget/TextView;

    .line 123
    sget v0, Ldroidninja/filepicker/R$id;->file_size_tv:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Ldroidninja/filepicker/adapters/FileListAdapter$FileViewHolder;->fileSizeTextView:Landroid/widget/TextView;

    .line 124
    return-void
.end method
