.class public Ldroidninja/filepicker/cursors/loadercallbacks/PhotoDirLoaderCallbacks;
.super Ljava/lang/Object;
.source "PhotoDirLoaderCallbacks.java"

# interfaces
.implements Landroid/support/v4/app/LoaderManager$LoaderCallbacks;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/support/v4/app/LoaderManager$LoaderCallbacks",
        "<",
        "Landroid/database/Cursor;",
        ">;"
    }
.end annotation


# static fields
.field public static final INDEX_ALL_PHOTOS:I


# instance fields
.field private context:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Landroid/content/Context;",
            ">;"
        }
    .end annotation
.end field

.field private resultCallback:Ldroidninja/filepicker/cursors/loadercallbacks/FileResultCallback;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ldroidninja/filepicker/cursors/loadercallbacks/FileResultCallback",
            "<",
            "Ldroidninja/filepicker/models/PhotoDirectory;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;Ldroidninja/filepicker/cursors/loadercallbacks/FileResultCallback;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ldroidninja/filepicker/cursors/loadercallbacks/FileResultCallback",
            "<",
            "Ldroidninja/filepicker/models/PhotoDirectory;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 32
    .local p2, "resultCallback":Ldroidninja/filepicker/cursors/loadercallbacks/FileResultCallback;, "Ldroidninja/filepicker/cursors/loadercallbacks/FileResultCallback<Ldroidninja/filepicker/models/PhotoDirectory;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Ldroidninja/filepicker/cursors/loadercallbacks/PhotoDirLoaderCallbacks;->context:Ljava/lang/ref/WeakReference;

    .line 34
    iput-object p2, p0, Ldroidninja/filepicker/cursors/loadercallbacks/PhotoDirLoaderCallbacks;->resultCallback:Ldroidninja/filepicker/cursors/loadercallbacks/FileResultCallback;

    .line 35
    return-void
.end method


# virtual methods
.method public onCreateLoader(ILandroid/os/Bundle;)Landroid/support/v4/content/Loader;
    .locals 2
    .param p1, "id"    # I
    .param p2, "args"    # Landroid/os/Bundle;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Landroid/os/Bundle;",
            ")",
            "Landroid/support/v4/content/Loader",
            "<",
            "Landroid/database/Cursor;",
            ">;"
        }
    .end annotation

    .prologue
    .line 39
    new-instance v1, Ldroidninja/filepicker/cursors/PhotoDirectoryLoader;

    iget-object v0, p0, Ldroidninja/filepicker/cursors/loadercallbacks/PhotoDirLoaderCallbacks;->context:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    invoke-direct {v1, v0, p2}, Ldroidninja/filepicker/cursors/PhotoDirectoryLoader;-><init>(Landroid/content/Context;Landroid/os/Bundle;)V

    return-object v1
.end method

.method public onLoadFinished(Landroid/support/v4/content/Loader;Landroid/database/Cursor;)V
    .locals 10
    .param p2, "data"    # Landroid/database/Cursor;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/support/v4/content/Loader",
            "<",
            "Landroid/database/Cursor;",
            ">;",
            "Landroid/database/Cursor;",
            ")V"
        }
    .end annotation

    .prologue
    .line 45
    .local p1, "loader":Landroid/support/v4/content/Loader;, "Landroid/support/v4/content/Loader<Landroid/database/Cursor;>;"
    if-nez p2, :cond_1

    .line 84
    :cond_0
    :goto_0
    return-void

    .line 46
    :cond_1
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 48
    .local v1, "directories":Ljava/util/List;, "Ljava/util/List<Ldroidninja/filepicker/models/PhotoDirectory;>;"
    :goto_1
    invoke-interface {p2}, Landroid/database/Cursor;->moveToNext()Z

    move-result v8

    if-eqz v8, :cond_5

    .line 50
    const-string v8, "_id"

    invoke-interface {p2, v8}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v8

    invoke-interface {p2, v8}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    .line 51
    .local v3, "imageId":I
    const-string v8, "bucket_id"

    invoke-interface {p2, v8}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v8

    invoke-interface {p2, v8}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 52
    .local v0, "bucketId":Ljava/lang/String;
    const-string v8, "bucket_display_name"

    invoke-interface {p2, v8}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v8

    invoke-interface {p2, v8}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 53
    .local v5, "name":Ljava/lang/String;
    const-string v8, "_data"

    invoke-interface {p2, v8}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v8

    invoke-interface {p2, v8}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    .line 54
    .local v6, "path":Ljava/lang/String;
    const-string v8, "title"

    invoke-interface {p2, v8}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v8

    invoke-interface {p2, v8}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 55
    .local v2, "fileName":Ljava/lang/String;
    const-string v8, "media_type"

    invoke-interface {p2, v8}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v8

    invoke-interface {p2, v8}, Landroid/database/Cursor;->getInt(I)I

    move-result v4

    .line 57
    .local v4, "mediaType":I
    new-instance v7, Ldroidninja/filepicker/models/PhotoDirectory;

    invoke-direct {v7}, Ldroidninja/filepicker/models/PhotoDirectory;-><init>()V

    .line 58
    .local v7, "photoDirectory":Ldroidninja/filepicker/models/PhotoDirectory;
    invoke-virtual {v7, v0}, Ldroidninja/filepicker/models/PhotoDirectory;->setBucketId(Ljava/lang/String;)V

    .line 59
    invoke-virtual {v7, v5}, Ldroidninja/filepicker/models/PhotoDirectory;->setName(Ljava/lang/String;)V

    .line 61
    invoke-interface {v1, v7}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_4

    .line 62
    invoke-virtual {v6}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v8

    const-string v9, "gif"

    invoke-virtual {v8, v9}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_3

    .line 63
    invoke-static {}, Ldroidninja/filepicker/PickerManager;->getInstance()Ldroidninja/filepicker/PickerManager;

    move-result-object v8

    invoke-virtual {v8}, Ldroidninja/filepicker/PickerManager;->isShowGif()Z

    move-result v8

    if-eqz v8, :cond_2

    .line 65
    invoke-virtual {v7, v3, v2, v6, v4}, Ldroidninja/filepicker/models/PhotoDirectory;->addPhoto(ILjava/lang/String;Ljava/lang/String;I)V

    .line 73
    :cond_2
    :goto_2
    const-string v8, "date_added"

    invoke-interface {p2, v8}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v8

    invoke-interface {p2, v8}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v8

    invoke-virtual {v7, v8, v9}, Ldroidninja/filepicker/models/PhotoDirectory;->setDateAdded(J)V

    .line 74
    invoke-interface {v1, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 70
    :cond_3
    invoke-virtual {v7, v3, v2, v6, v4}, Ldroidninja/filepicker/models/PhotoDirectory;->addPhoto(ILjava/lang/String;Ljava/lang/String;I)V

    goto :goto_2

    .line 76
    :cond_4
    invoke-interface {v1, v7}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v8

    invoke-interface {v1, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ldroidninja/filepicker/models/PhotoDirectory;

    invoke-virtual {v8, v3, v2, v6, v4}, Ldroidninja/filepicker/models/PhotoDirectory;->addPhoto(ILjava/lang/String;Ljava/lang/String;I)V

    goto/16 :goto_1

    .line 81
    .end local v0    # "bucketId":Ljava/lang/String;
    .end local v2    # "fileName":Ljava/lang/String;
    .end local v3    # "imageId":I
    .end local v4    # "mediaType":I
    .end local v5    # "name":Ljava/lang/String;
    .end local v6    # "path":Ljava/lang/String;
    .end local v7    # "photoDirectory":Ldroidninja/filepicker/models/PhotoDirectory;
    :cond_5
    iget-object v8, p0, Ldroidninja/filepicker/cursors/loadercallbacks/PhotoDirLoaderCallbacks;->resultCallback:Ldroidninja/filepicker/cursors/loadercallbacks/FileResultCallback;

    if-eqz v8, :cond_0

    .line 82
    iget-object v8, p0, Ldroidninja/filepicker/cursors/loadercallbacks/PhotoDirLoaderCallbacks;->resultCallback:Ldroidninja/filepicker/cursors/loadercallbacks/FileResultCallback;

    invoke-interface {v8, v1}, Ldroidninja/filepicker/cursors/loadercallbacks/FileResultCallback;->onResultCallback(Ljava/util/List;)V

    goto/16 :goto_0
.end method

.method public bridge synthetic onLoadFinished(Landroid/support/v4/content/Loader;Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 27
    check-cast p2, Landroid/database/Cursor;

    invoke-virtual {p0, p1, p2}, Ldroidninja/filepicker/cursors/loadercallbacks/PhotoDirLoaderCallbacks;->onLoadFinished(Landroid/support/v4/content/Loader;Landroid/database/Cursor;)V

    return-void
.end method

.method public onLoaderReset(Landroid/support/v4/content/Loader;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/support/v4/content/Loader",
            "<",
            "Landroid/database/Cursor;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 89
    .local p1, "loader":Landroid/support/v4/content/Loader;, "Landroid/support/v4/content/Loader<Landroid/database/Cursor;>;"
    return-void
.end method
