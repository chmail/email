.class public Ldroidninja/filepicker/adapters/PhotoGridAdapter$PhotoViewHolder;
.super Landroid/support/v7/widget/RecyclerView$ViewHolder;
.source "PhotoGridAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ldroidninja/filepicker/adapters/PhotoGridAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "PhotoViewHolder"
.end annotation


# instance fields
.field checkBox:Ldroidninja/filepicker/views/SmoothCheckBox;

.field imageView:Landroid/widget/ImageView;

.field selectBg:Landroid/view/View;

.field videoIcon:Landroid/widget/ImageView;


# direct methods
.method public constructor <init>(Landroid/view/View;)V
    .locals 1
    .param p1, "itemView"    # Landroid/view/View;

    .prologue
    .line 187
    invoke-direct {p0, p1}, Landroid/support/v7/widget/RecyclerView$ViewHolder;-><init>(Landroid/view/View;)V

    .line 188
    sget v0, Ldroidninja/filepicker/R$id;->checkbox:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Ldroidninja/filepicker/views/SmoothCheckBox;

    iput-object v0, p0, Ldroidninja/filepicker/adapters/PhotoGridAdapter$PhotoViewHolder;->checkBox:Ldroidninja/filepicker/views/SmoothCheckBox;

    .line 189
    sget v0, Ldroidninja/filepicker/R$id;->iv_photo:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Ldroidninja/filepicker/adapters/PhotoGridAdapter$PhotoViewHolder;->imageView:Landroid/widget/ImageView;

    .line 190
    sget v0, Ldroidninja/filepicker/R$id;->video_icon:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Ldroidninja/filepicker/adapters/PhotoGridAdapter$PhotoViewHolder;->videoIcon:Landroid/widget/ImageView;

    .line 191
    sget v0, Ldroidninja/filepicker/R$id;->transparent_bg:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Ldroidninja/filepicker/adapters/PhotoGridAdapter$PhotoViewHolder;->selectBg:Landroid/view/View;

    .line 192
    return-void
.end method
