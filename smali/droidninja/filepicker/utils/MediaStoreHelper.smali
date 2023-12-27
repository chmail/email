.class public Ldroidninja/filepicker/utils/MediaStoreHelper;
.super Ljava/lang/Object;
.source "MediaStoreHelper.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getDocs(Landroid/support/v4/app/FragmentActivity;Ldroidninja/filepicker/cursors/loadercallbacks/FileResultCallback;)V
    .locals 2
    .param p0, "activity"    # Landroid/support/v4/app/FragmentActivity;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/support/v4/app/FragmentActivity;",
            "Ldroidninja/filepicker/cursors/loadercallbacks/FileResultCallback",
            "<",
            "Ldroidninja/filepicker/models/Document;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 31
    .local p1, "fileResultCallback":Ldroidninja/filepicker/cursors/loadercallbacks/FileResultCallback;, "Ldroidninja/filepicker/cursors/loadercallbacks/FileResultCallback<Ldroidninja/filepicker/models/Document;>;"
    new-instance v0, Ldroidninja/filepicker/cursors/DocScannerTask;

    invoke-direct {v0, p0, p1}, Ldroidninja/filepicker/cursors/DocScannerTask;-><init>(Landroid/content/Context;Ldroidninja/filepicker/cursors/loadercallbacks/FileResultCallback;)V

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Ldroidninja/filepicker/cursors/DocScannerTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 32
    return-void
.end method

.method public static getPhotoDirs(Landroid/support/v4/app/FragmentActivity;Landroid/os/Bundle;Ldroidninja/filepicker/cursors/loadercallbacks/FileResultCallback;)V
    .locals 3
    .param p0, "activity"    # Landroid/support/v4/app/FragmentActivity;
    .param p1, "args"    # Landroid/os/Bundle;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/support/v4/app/FragmentActivity;",
            "Landroid/os/Bundle;",
            "Ldroidninja/filepicker/cursors/loadercallbacks/FileResultCallback",
            "<",
            "Ldroidninja/filepicker/models/PhotoDirectory;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p2, "resultCallback":Ldroidninja/filepicker/cursors/loadercallbacks/FileResultCallback;, "Ldroidninja/filepicker/cursors/loadercallbacks/FileResultCallback<Ldroidninja/filepicker/models/PhotoDirectory;>;"
    const/4 v2, 0x1

    .line 16
    invoke-virtual {p0}, Landroid/support/v4/app/FragmentActivity;->getSupportLoaderManager()Landroid/support/v4/app/LoaderManager;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/support/v4/app/LoaderManager;->getLoader(I)Landroid/support/v4/content/Loader;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 17
    invoke-virtual {p0}, Landroid/support/v4/app/FragmentActivity;->getSupportLoaderManager()Landroid/support/v4/app/LoaderManager;

    move-result-object v0

    new-instance v1, Ldroidninja/filepicker/cursors/loadercallbacks/PhotoDirLoaderCallbacks;

    invoke-direct {v1, p0, p2}, Ldroidninja/filepicker/cursors/loadercallbacks/PhotoDirLoaderCallbacks;-><init>(Landroid/content/Context;Ldroidninja/filepicker/cursors/loadercallbacks/FileResultCallback;)V

    invoke-virtual {v0, v2, p1, v1}, Landroid/support/v4/app/LoaderManager;->restartLoader(ILandroid/os/Bundle;Landroid/support/v4/app/LoaderManager$LoaderCallbacks;)Landroid/support/v4/content/Loader;

    .line 20
    :goto_0
    return-void

    .line 19
    :cond_0
    invoke-virtual {p0}, Landroid/support/v4/app/FragmentActivity;->getSupportLoaderManager()Landroid/support/v4/app/LoaderManager;

    move-result-object v0

    new-instance v1, Ldroidninja/filepicker/cursors/loadercallbacks/PhotoDirLoaderCallbacks;

    invoke-direct {v1, p0, p2}, Ldroidninja/filepicker/cursors/loadercallbacks/PhotoDirLoaderCallbacks;-><init>(Landroid/content/Context;Ldroidninja/filepicker/cursors/loadercallbacks/FileResultCallback;)V

    invoke-virtual {v0, v2, p1, v1}, Landroid/support/v4/app/LoaderManager;->initLoader(ILandroid/os/Bundle;Landroid/support/v4/app/LoaderManager$LoaderCallbacks;)Landroid/support/v4/content/Loader;

    goto :goto_0
.end method

.method public static getVideoDirs(Landroid/support/v4/app/FragmentActivity;Landroid/os/Bundle;Ldroidninja/filepicker/cursors/loadercallbacks/FileResultCallback;)V
    .locals 3
    .param p0, "activity"    # Landroid/support/v4/app/FragmentActivity;
    .param p1, "args"    # Landroid/os/Bundle;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/support/v4/app/FragmentActivity;",
            "Landroid/os/Bundle;",
            "Ldroidninja/filepicker/cursors/loadercallbacks/FileResultCallback",
            "<",
            "Ldroidninja/filepicker/models/PhotoDirectory;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p2, "resultCallback":Ldroidninja/filepicker/cursors/loadercallbacks/FileResultCallback;, "Ldroidninja/filepicker/cursors/loadercallbacks/FileResultCallback<Ldroidninja/filepicker/models/PhotoDirectory;>;"
    const/4 v2, 0x3

    .line 23
    invoke-virtual {p0}, Landroid/support/v4/app/FragmentActivity;->getSupportLoaderManager()Landroid/support/v4/app/LoaderManager;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/support/v4/app/LoaderManager;->getLoader(I)Landroid/support/v4/content/Loader;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 24
    invoke-virtual {p0}, Landroid/support/v4/app/FragmentActivity;->getSupportLoaderManager()Landroid/support/v4/app/LoaderManager;

    move-result-object v0

    new-instance v1, Ldroidninja/filepicker/cursors/loadercallbacks/PhotoDirLoaderCallbacks;

    invoke-direct {v1, p0, p2}, Ldroidninja/filepicker/cursors/loadercallbacks/PhotoDirLoaderCallbacks;-><init>(Landroid/content/Context;Ldroidninja/filepicker/cursors/loadercallbacks/FileResultCallback;)V

    invoke-virtual {v0, v2, p1, v1}, Landroid/support/v4/app/LoaderManager;->restartLoader(ILandroid/os/Bundle;Landroid/support/v4/app/LoaderManager$LoaderCallbacks;)Landroid/support/v4/content/Loader;

    .line 27
    :goto_0
    return-void

    .line 26
    :cond_0
    invoke-virtual {p0}, Landroid/support/v4/app/FragmentActivity;->getSupportLoaderManager()Landroid/support/v4/app/LoaderManager;

    move-result-object v0

    new-instance v1, Ldroidninja/filepicker/cursors/loadercallbacks/PhotoDirLoaderCallbacks;

    invoke-direct {v1, p0, p2}, Ldroidninja/filepicker/cursors/loadercallbacks/PhotoDirLoaderCallbacks;-><init>(Landroid/content/Context;Ldroidninja/filepicker/cursors/loadercallbacks/FileResultCallback;)V

    invoke-virtual {v0, v2, p1, v1}, Landroid/support/v4/app/LoaderManager;->initLoader(ILandroid/os/Bundle;Landroid/support/v4/app/LoaderManager$LoaderCallbacks;)Landroid/support/v4/content/Loader;

    goto :goto_0
.end method
