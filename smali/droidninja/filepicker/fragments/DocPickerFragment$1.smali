.class Ldroidninja/filepicker/fragments/DocPickerFragment$1;
.super Ljava/lang/Object;
.source "DocPickerFragment.java"

# interfaces
.implements Ldroidninja/filepicker/cursors/loadercallbacks/FileResultCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ldroidninja/filepicker/fragments/DocPickerFragment;->setData()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ldroidninja/filepicker/cursors/loadercallbacks/FileResultCallback",
        "<",
        "Ldroidninja/filepicker/models/Document;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Ldroidninja/filepicker/fragments/DocPickerFragment;


# direct methods
.method constructor <init>(Ldroidninja/filepicker/fragments/DocPickerFragment;)V
    .locals 0
    .param p1, "this$0"    # Ldroidninja/filepicker/fragments/DocPickerFragment;

    .prologue
    .line 104
    iput-object p1, p0, Ldroidninja/filepicker/fragments/DocPickerFragment$1;->this$0:Ldroidninja/filepicker/fragments/DocPickerFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onResultCallback(Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ldroidninja/filepicker/models/Document;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 107
    .local p1, "files":Ljava/util/List;, "Ljava/util/List<Ldroidninja/filepicker/models/Document;>;"
    iget-object v0, p0, Ldroidninja/filepicker/fragments/DocPickerFragment$1;->this$0:Ldroidninja/filepicker/fragments/DocPickerFragment;

    invoke-virtual {v0}, Ldroidninja/filepicker/fragments/DocPickerFragment;->isAdded()Z

    move-result v0

    if-nez v0, :cond_0

    .line 110
    :goto_0
    return-void

    .line 108
    :cond_0
    iget-object v0, p0, Ldroidninja/filepicker/fragments/DocPickerFragment$1;->this$0:Ldroidninja/filepicker/fragments/DocPickerFragment;

    invoke-static {v0}, Ldroidninja/filepicker/fragments/DocPickerFragment;->access$000(Ldroidninja/filepicker/fragments/DocPickerFragment;)Landroid/widget/ProgressBar;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 109
    iget-object v0, p0, Ldroidninja/filepicker/fragments/DocPickerFragment$1;->this$0:Ldroidninja/filepicker/fragments/DocPickerFragment;

    invoke-static {v0, p1}, Ldroidninja/filepicker/fragments/DocPickerFragment;->access$100(Ldroidninja/filepicker/fragments/DocPickerFragment;Ljava/util/List;)V

    goto :goto_0
.end method
