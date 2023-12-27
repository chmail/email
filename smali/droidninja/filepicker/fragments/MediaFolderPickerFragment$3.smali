.class Ldroidninja/filepicker/fragments/MediaFolderPickerFragment$3;
.super Ljava/lang/Object;
.source "MediaFolderPickerFragment.java"

# interfaces
.implements Ldroidninja/filepicker/cursors/loadercallbacks/FileResultCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ldroidninja/filepicker/fragments/MediaFolderPickerFragment;->getDataFromMedia()V
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
        "Ldroidninja/filepicker/models/PhotoDirectory;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Ldroidninja/filepicker/fragments/MediaFolderPickerFragment;


# direct methods
.method constructor <init>(Ldroidninja/filepicker/fragments/MediaFolderPickerFragment;)V
    .locals 0
    .param p1, "this$0"    # Ldroidninja/filepicker/fragments/MediaFolderPickerFragment;

    .prologue
    .line 155
    iput-object p1, p0, Ldroidninja/filepicker/fragments/MediaFolderPickerFragment$3;->this$0:Ldroidninja/filepicker/fragments/MediaFolderPickerFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onResultCallback(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ldroidninja/filepicker/models/PhotoDirectory;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 158
    .local p1, "dirs":Ljava/util/List;, "Ljava/util/List<Ldroidninja/filepicker/models/PhotoDirectory;>;"
    iget-object v0, p0, Ldroidninja/filepicker/fragments/MediaFolderPickerFragment$3;->this$0:Ldroidninja/filepicker/fragments/MediaFolderPickerFragment;

    invoke-static {v0, p1}, Ldroidninja/filepicker/fragments/MediaFolderPickerFragment;->access$200(Ldroidninja/filepicker/fragments/MediaFolderPickerFragment;Ljava/util/List;)V

    .line 159
    return-void
.end method
