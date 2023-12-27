.class Ldroidninja/filepicker/MediaDetailsActivity$2;
.super Ljava/lang/Object;
.source "MediaDetailsActivity.java"

# interfaces
.implements Ldroidninja/filepicker/cursors/loadercallbacks/FileResultCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ldroidninja/filepicker/MediaDetailsActivity;->getDataFromMedia(Ljava/lang/String;)V
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
.field final synthetic this$0:Ldroidninja/filepicker/MediaDetailsActivity;


# direct methods
.method constructor <init>(Ldroidninja/filepicker/MediaDetailsActivity;)V
    .locals 0
    .param p1, "this$0"    # Ldroidninja/filepicker/MediaDetailsActivity;

    .prologue
    .line 124
    iput-object p1, p0, Ldroidninja/filepicker/MediaDetailsActivity$2;->this$0:Ldroidninja/filepicker/MediaDetailsActivity;

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
    .line 127
    .local p1, "dirs":Ljava/util/List;, "Ljava/util/List<Ldroidninja/filepicker/models/PhotoDirectory;>;"
    iget-object v0, p0, Ldroidninja/filepicker/MediaDetailsActivity$2;->this$0:Ldroidninja/filepicker/MediaDetailsActivity;

    invoke-static {v0, p1}, Ldroidninja/filepicker/MediaDetailsActivity;->access$200(Ldroidninja/filepicker/MediaDetailsActivity;Ljava/util/List;)V

    .line 128
    return-void
.end method
