.class Ldroidninja/filepicker/adapters/FileListAdapter$3;
.super Ljava/lang/Object;
.source "FileListAdapter.java"

# interfaces
.implements Ldroidninja/filepicker/views/SmoothCheckBox$OnCheckedChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ldroidninja/filepicker/adapters/FileListAdapter;->onBindViewHolder(Ldroidninja/filepicker/adapters/FileListAdapter$FileViewHolder;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Ldroidninja/filepicker/adapters/FileListAdapter;

.field final synthetic val$document:Ldroidninja/filepicker/models/Document;

.field final synthetic val$holder:Ldroidninja/filepicker/adapters/FileListAdapter$FileViewHolder;


# direct methods
.method constructor <init>(Ldroidninja/filepicker/adapters/FileListAdapter;Ldroidninja/filepicker/models/Document;Ldroidninja/filepicker/adapters/FileListAdapter$FileViewHolder;)V
    .locals 0
    .param p1, "this$0"    # Ldroidninja/filepicker/adapters/FileListAdapter;

    .prologue
    .line 73
    iput-object p1, p0, Ldroidninja/filepicker/adapters/FileListAdapter$3;->this$0:Ldroidninja/filepicker/adapters/FileListAdapter;

    iput-object p2, p0, Ldroidninja/filepicker/adapters/FileListAdapter$3;->val$document:Ldroidninja/filepicker/models/Document;

    iput-object p3, p0, Ldroidninja/filepicker/adapters/FileListAdapter$3;->val$holder:Ldroidninja/filepicker/adapters/FileListAdapter$FileViewHolder;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCheckedChanged(Ldroidninja/filepicker/views/SmoothCheckBox;Z)V
    .locals 2
    .param p1, "checkBox"    # Ldroidninja/filepicker/views/SmoothCheckBox;
    .param p2, "isChecked"    # Z

    .prologue
    .line 76
    iget-object v0, p0, Ldroidninja/filepicker/adapters/FileListAdapter$3;->this$0:Ldroidninja/filepicker/adapters/FileListAdapter;

    iget-object v1, p0, Ldroidninja/filepicker/adapters/FileListAdapter$3;->val$document:Ldroidninja/filepicker/models/Document;

    invoke-virtual {v0, v1}, Ldroidninja/filepicker/adapters/FileListAdapter;->toggleSelection(Ldroidninja/filepicker/models/BaseFile;)V

    .line 77
    iget-object v0, p0, Ldroidninja/filepicker/adapters/FileListAdapter$3;->val$holder:Ldroidninja/filepicker/adapters/FileListAdapter$FileViewHolder;

    iget-object v1, v0, Ldroidninja/filepicker/adapters/FileListAdapter$FileViewHolder;->itemView:Landroid/view/View;

    if-eqz p2, :cond_0

    sget v0, Ldroidninja/filepicker/R$color;->bg_gray:I

    :goto_0
    invoke-virtual {v1, v0}, Landroid/view/View;->setBackgroundResource(I)V

    .line 78
    return-void

    .line 77
    :cond_0
    const v0, 0x106000b

    goto :goto_0
.end method
