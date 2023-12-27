.class Ldroidninja/filepicker/adapters/PhotoGridAdapter$3;
.super Ljava/lang/Object;
.source "PhotoGridAdapter.java"

# interfaces
.implements Ldroidninja/filepicker/views/SmoothCheckBox$OnCheckedChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ldroidninja/filepicker/adapters/PhotoGridAdapter;->onBindViewHolder(Ldroidninja/filepicker/adapters/PhotoGridAdapter$PhotoViewHolder;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Ldroidninja/filepicker/adapters/PhotoGridAdapter;

.field final synthetic val$holder:Ldroidninja/filepicker/adapters/PhotoGridAdapter$PhotoViewHolder;

.field final synthetic val$media:Ldroidninja/filepicker/models/Media;


# direct methods
.method constructor <init>(Ldroidninja/filepicker/adapters/PhotoGridAdapter;Ldroidninja/filepicker/models/Media;Ldroidninja/filepicker/adapters/PhotoGridAdapter$PhotoViewHolder;)V
    .locals 0
    .param p1, "this$0"    # Ldroidninja/filepicker/adapters/PhotoGridAdapter;

    .prologue
    .line 112
    iput-object p1, p0, Ldroidninja/filepicker/adapters/PhotoGridAdapter$3;->this$0:Ldroidninja/filepicker/adapters/PhotoGridAdapter;

    iput-object p2, p0, Ldroidninja/filepicker/adapters/PhotoGridAdapter$3;->val$media:Ldroidninja/filepicker/models/Media;

    iput-object p3, p0, Ldroidninja/filepicker/adapters/PhotoGridAdapter$3;->val$holder:Ldroidninja/filepicker/adapters/PhotoGridAdapter$PhotoViewHolder;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCheckedChanged(Ldroidninja/filepicker/views/SmoothCheckBox;Z)V
    .locals 5
    .param p1, "checkBox"    # Ldroidninja/filepicker/views/SmoothCheckBox;
    .param p2, "isChecked"    # Z

    .prologue
    const/16 v2, 0x8

    const/4 v4, 0x1

    const/4 v1, 0x0

    .line 115
    iget-object v0, p0, Ldroidninja/filepicker/adapters/PhotoGridAdapter$3;->this$0:Ldroidninja/filepicker/adapters/PhotoGridAdapter;

    iget-object v3, p0, Ldroidninja/filepicker/adapters/PhotoGridAdapter$3;->val$media:Ldroidninja/filepicker/models/Media;

    invoke-virtual {v0, v3}, Ldroidninja/filepicker/adapters/PhotoGridAdapter;->toggleSelection(Ldroidninja/filepicker/models/BaseFile;)V

    .line 116
    iget-object v0, p0, Ldroidninja/filepicker/adapters/PhotoGridAdapter$3;->val$holder:Ldroidninja/filepicker/adapters/PhotoGridAdapter$PhotoViewHolder;

    iget-object v3, v0, Ldroidninja/filepicker/adapters/PhotoGridAdapter$PhotoViewHolder;->selectBg:Landroid/view/View;

    if-eqz p2, :cond_1

    move v0, v1

    :goto_0
    invoke-virtual {v3, v0}, Landroid/view/View;->setVisibility(I)V

    .line 118
    if-eqz p2, :cond_2

    .line 120
    iget-object v0, p0, Ldroidninja/filepicker/adapters/PhotoGridAdapter$3;->val$holder:Ldroidninja/filepicker/adapters/PhotoGridAdapter$PhotoViewHolder;

    iget-object v0, v0, Ldroidninja/filepicker/adapters/PhotoGridAdapter$PhotoViewHolder;->checkBox:Ldroidninja/filepicker/views/SmoothCheckBox;

    invoke-virtual {v0, v1}, Ldroidninja/filepicker/views/SmoothCheckBox;->setVisibility(I)V

    .line 121
    invoke-static {}, Ldroidninja/filepicker/PickerManager;->getInstance()Ldroidninja/filepicker/PickerManager;

    move-result-object v0

    iget-object v1, p0, Ldroidninja/filepicker/adapters/PhotoGridAdapter$3;->val$media:Ldroidninja/filepicker/models/Media;

    invoke-virtual {v1}, Ldroidninja/filepicker/models/Media;->getPath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, v4}, Ldroidninja/filepicker/PickerManager;->add(Ljava/lang/String;I)V

    .line 129
    :goto_1
    iget-object v0, p0, Ldroidninja/filepicker/adapters/PhotoGridAdapter$3;->this$0:Ldroidninja/filepicker/adapters/PhotoGridAdapter;

    invoke-static {v0}, Ldroidninja/filepicker/adapters/PhotoGridAdapter;->access$100(Ldroidninja/filepicker/adapters/PhotoGridAdapter;)Ldroidninja/filepicker/adapters/FileAdapterListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 130
    iget-object v0, p0, Ldroidninja/filepicker/adapters/PhotoGridAdapter$3;->this$0:Ldroidninja/filepicker/adapters/PhotoGridAdapter;

    invoke-static {v0}, Ldroidninja/filepicker/adapters/PhotoGridAdapter;->access$100(Ldroidninja/filepicker/adapters/PhotoGridAdapter;)Ldroidninja/filepicker/adapters/FileAdapterListener;

    move-result-object v0

    invoke-interface {v0}, Ldroidninja/filepicker/adapters/FileAdapterListener;->onItemSelected()V

    .line 131
    :cond_0
    return-void

    :cond_1
    move v0, v2

    .line 116
    goto :goto_0

    .line 125
    :cond_2
    iget-object v0, p0, Ldroidninja/filepicker/adapters/PhotoGridAdapter$3;->val$holder:Ldroidninja/filepicker/adapters/PhotoGridAdapter$PhotoViewHolder;

    iget-object v0, v0, Ldroidninja/filepicker/adapters/PhotoGridAdapter$PhotoViewHolder;->checkBox:Ldroidninja/filepicker/views/SmoothCheckBox;

    invoke-virtual {v0, v2}, Ldroidninja/filepicker/views/SmoothCheckBox;->setVisibility(I)V

    .line 126
    invoke-static {}, Ldroidninja/filepicker/PickerManager;->getInstance()Ldroidninja/filepicker/PickerManager;

    move-result-object v0

    iget-object v1, p0, Ldroidninja/filepicker/adapters/PhotoGridAdapter$3;->val$media:Ldroidninja/filepicker/models/Media;

    invoke-virtual {v1}, Ldroidninja/filepicker/models/Media;->getPath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, v4}, Ldroidninja/filepicker/PickerManager;->remove(Ljava/lang/String;I)V

    goto :goto_1
.end method
