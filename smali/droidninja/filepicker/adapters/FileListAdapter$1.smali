.class Ldroidninja/filepicker/adapters/FileListAdapter$1;
.super Ljava/lang/Object;
.source "FileListAdapter.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


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
    .line 51
    iput-object p1, p0, Ldroidninja/filepicker/adapters/FileListAdapter$1;->this$0:Ldroidninja/filepicker/adapters/FileListAdapter;

    iput-object p2, p0, Ldroidninja/filepicker/adapters/FileListAdapter$1;->val$document:Ldroidninja/filepicker/models/Document;

    iput-object p3, p0, Ldroidninja/filepicker/adapters/FileListAdapter$1;->val$holder:Ldroidninja/filepicker/adapters/FileListAdapter$FileViewHolder;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 54
    iget-object v0, p0, Ldroidninja/filepicker/adapters/FileListAdapter$1;->this$0:Ldroidninja/filepicker/adapters/FileListAdapter;

    iget-object v1, p0, Ldroidninja/filepicker/adapters/FileListAdapter$1;->val$document:Ldroidninja/filepicker/models/Document;

    iget-object v2, p0, Ldroidninja/filepicker/adapters/FileListAdapter$1;->val$holder:Ldroidninja/filepicker/adapters/FileListAdapter$FileViewHolder;

    invoke-static {v0, v1, v2}, Ldroidninja/filepicker/adapters/FileListAdapter;->access$000(Ldroidninja/filepicker/adapters/FileListAdapter;Ldroidninja/filepicker/models/Document;Ldroidninja/filepicker/adapters/FileListAdapter$FileViewHolder;)V

    .line 55
    return-void
.end method
