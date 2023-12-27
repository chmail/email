.class Ldroidninja/filepicker/fragments/MediaDetailPickerFragment$2;
.super Ljava/lang/Object;
.source "MediaDetailPickerFragment.java"

# interfaces
.implements Ldroidninja/filepicker/cursors/loadercallbacks/FileResultCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ldroidninja/filepicker/fragments/MediaDetailPickerFragment;->getDataFromMedia()V
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
.field final synthetic this$0:Ldroidninja/filepicker/fragments/MediaDetailPickerFragment;


# direct methods
.method constructor <init>(Ldroidninja/filepicker/fragments/MediaDetailPickerFragment;)V
    .locals 0
    .param p1, "this$0"    # Ldroidninja/filepicker/fragments/MediaDetailPickerFragment;

    .prologue
    .line 162
    iput-object p1, p0, Ldroidninja/filepicker/fragments/MediaDetailPickerFragment$2;->this$0:Ldroidninja/filepicker/fragments/MediaDetailPickerFragment;

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
    .line 165
    .local p1, "dirs":Ljava/util/List;, "Ljava/util/List<Ldroidninja/filepicker/models/PhotoDirectory;>;"
    iget-object v0, p0, Ldroidninja/filepicker/fragments/MediaDetailPickerFragment$2;->this$0:Ldroidninja/filepicker/fragments/MediaDetailPickerFragment;

    invoke-static {v0, p1}, Ldroidninja/filepicker/fragments/MediaDetailPickerFragment;->access$200(Ldroidninja/filepicker/fragments/MediaDetailPickerFragment;Ljava/util/List;)V

    .line 166
    return-void
.end method
