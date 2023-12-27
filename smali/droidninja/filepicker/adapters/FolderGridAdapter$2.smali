.class Ldroidninja/filepicker/adapters/FolderGridAdapter$2;
.super Ljava/lang/Object;
.source "FolderGridAdapter.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ldroidninja/filepicker/adapters/FolderGridAdapter;->onBindViewHolder(Ldroidninja/filepicker/adapters/FolderGridAdapter$PhotoViewHolder;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Ldroidninja/filepicker/adapters/FolderGridAdapter;


# direct methods
.method constructor <init>(Ldroidninja/filepicker/adapters/FolderGridAdapter;)V
    .locals 0
    .param p1, "this$0"    # Ldroidninja/filepicker/adapters/FolderGridAdapter;

    .prologue
    .line 95
    iput-object p1, p0, Ldroidninja/filepicker/adapters/FolderGridAdapter$2;->this$0:Ldroidninja/filepicker/adapters/FolderGridAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 98
    iget-object v0, p0, Ldroidninja/filepicker/adapters/FolderGridAdapter$2;->this$0:Ldroidninja/filepicker/adapters/FolderGridAdapter;

    invoke-static {v0}, Ldroidninja/filepicker/adapters/FolderGridAdapter;->access$000(Ldroidninja/filepicker/adapters/FolderGridAdapter;)Ldroidninja/filepicker/adapters/FolderGridAdapter$FolderGridAdapterListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 99
    iget-object v0, p0, Ldroidninja/filepicker/adapters/FolderGridAdapter$2;->this$0:Ldroidninja/filepicker/adapters/FolderGridAdapter;

    invoke-static {v0}, Ldroidninja/filepicker/adapters/FolderGridAdapter;->access$000(Ldroidninja/filepicker/adapters/FolderGridAdapter;)Ldroidninja/filepicker/adapters/FolderGridAdapter$FolderGridAdapterListener;

    move-result-object v0

    invoke-interface {v0}, Ldroidninja/filepicker/adapters/FolderGridAdapter$FolderGridAdapterListener;->onCameraClicked()V

    .line 100
    :cond_0
    return-void
.end method
