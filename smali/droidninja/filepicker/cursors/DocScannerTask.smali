.class public Ldroidninja/filepicker/cursors/DocScannerTask;
.super Landroid/os/AsyncTask;
.source "DocScannerTask.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Ljava/util/List",
        "<",
        "Ldroidninja/filepicker/models/Document;",
        ">;>;"
    }
.end annotation


# instance fields
.field final DOC_PROJECTION:[Ljava/lang/String;

.field private final context:Landroid/content/Context;

.field private final resultCallback:Ldroidninja/filepicker/cursors/loadercallbacks/FileResultCallback;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ldroidninja/filepicker/cursors/loadercallbacks/FileResultCallback",
            "<",
            "Ldroidninja/filepicker/models/Document;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;Ldroidninja/filepicker/cursors/loadercallbacks/FileResultCallback;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ldroidninja/filepicker/cursors/loadercallbacks/FileResultCallback",
            "<",
            "Ldroidninja/filepicker/models/Document;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 40
    .local p2, "fileResultCallback":Ldroidninja/filepicker/cursors/loadercallbacks/FileResultCallback;, "Ldroidninja/filepicker/cursors/loadercallbacks/FileResultCallback<Ldroidninja/filepicker/models/Document;>;"
    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 27
    const/4 v0, 0x6

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "_id"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "_data"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "mime_type"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "_size"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "date_added"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "title"

    aput-object v2, v0, v1

    iput-object v0, p0, Ldroidninja/filepicker/cursors/DocScannerTask;->DOC_PROJECTION:[Ljava/lang/String;

    .line 41
    iput-object p1, p0, Ldroidninja/filepicker/cursors/DocScannerTask;->context:Landroid/content/Context;

    .line 42
    iput-object p2, p0, Ldroidninja/filepicker/cursors/DocScannerTask;->resultCallback:Ldroidninja/filepicker/cursors/loadercallbacks/FileResultCallback;

    .line 43
    return-void
.end method

.method private getDocumentFromCursor(Landroid/database/Cursor;)Ljava/util/ArrayList;
    .locals 8
    .param p1, "data"    # Landroid/database/Cursor;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/database/Cursor;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Ldroidninja/filepicker/models/Document;",
            ">;"
        }
    .end annotation

    .prologue
    .line 78
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 79
    .local v1, "documents":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ldroidninja/filepicker/models/Document;>;"
    :cond_0
    :goto_0
    invoke-interface {p1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v7

    if-eqz v7, :cond_2

    .line 81
    const-string v7, "_id"

    invoke-interface {p1, v7}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v7

    invoke-interface {p1, v7}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    .line 82
    .local v3, "imageId":I
    const-string v7, "_data"

    invoke-interface {p1, v7}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v7

    invoke-interface {p1, v7}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 83
    .local v5, "path":Ljava/lang/String;
    const-string v7, "title"

    invoke-interface {p1, v7}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v7

    invoke-interface {p1, v7}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    .line 85
    .local v6, "title":Ljava/lang/String;
    if-eqz v5, :cond_0

    .line 87
    invoke-static {}, Ldroidninja/filepicker/PickerManager;->getInstance()Ldroidninja/filepicker/PickerManager;

    move-result-object v7

    invoke-virtual {v7}, Ldroidninja/filepicker/PickerManager;->getFileTypes()Ljava/util/ArrayList;

    move-result-object v7

    invoke-direct {p0, v7, v5}, Ldroidninja/filepicker/cursors/DocScannerTask;->getFileType(Ljava/util/ArrayList;Ljava/lang/String;)Ldroidninja/filepicker/models/FileType;

    move-result-object v2

    .line 88
    .local v2, "fileType":Ldroidninja/filepicker/models/FileType;
    if-eqz v2, :cond_0

    new-instance v7, Ljava/io/File;

    invoke-direct {v7, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7}, Ljava/io/File;->isDirectory()Z

    move-result v7

    if-nez v7, :cond_0

    .line 90
    new-instance v0, Ldroidninja/filepicker/models/Document;

    invoke-direct {v0, v3, v6, v5}, Ldroidninja/filepicker/models/Document;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    .line 91
    .local v0, "document":Ldroidninja/filepicker/models/Document;
    invoke-virtual {v0, v2}, Ldroidninja/filepicker/models/Document;->setFileType(Ldroidninja/filepicker/models/FileType;)V

    .line 93
    const-string v7, "mime_type"

    invoke-interface {p1, v7}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v7

    invoke-interface {p1, v7}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 94
    .local v4, "mimeType":Ljava/lang/String;
    if-eqz v4, :cond_1

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_1

    .line 95
    invoke-virtual {v0, v4}, Ldroidninja/filepicker/models/Document;->setMimeType(Ljava/lang/String;)V

    .line 100
    :goto_1
    const-string v7, "_size"

    invoke-interface {p1, v7}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v7

    invoke-interface {p1, v7}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v0, v7}, Ldroidninja/filepicker/models/Document;->setSize(Ljava/lang/String;)V

    .line 102
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_0

    .line 103
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 97
    :cond_1
    const-string v7, ""

    invoke-virtual {v0, v7}, Ldroidninja/filepicker/models/Document;->setMimeType(Ljava/lang/String;)V

    goto :goto_1

    .line 108
    .end local v0    # "document":Ldroidninja/filepicker/models/Document;
    .end local v2    # "fileType":Ldroidninja/filepicker/models/FileType;
    .end local v3    # "imageId":I
    .end local v4    # "mimeType":Ljava/lang/String;
    .end local v5    # "path":Ljava/lang/String;
    .end local v6    # "title":Ljava/lang/String;
    :cond_2
    return-object v1
.end method

.method private getFileType(Ljava/util/ArrayList;Ljava/lang/String;)Ldroidninja/filepicker/models/FileType;
    .locals 6
    .param p2, "path"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Ldroidninja/filepicker/models/FileType;",
            ">;",
            "Ljava/lang/String;",
            ")",
            "Ldroidninja/filepicker/models/FileType;"
        }
    .end annotation

    .prologue
    .line 112
    .local p1, "types":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ldroidninja/filepicker/models/FileType;>;"
    const/4 v0, 0x0

    .local v0, "index":I
    :goto_0
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v0, v2, :cond_2

    .line 113
    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ldroidninja/filepicker/models/FileType;

    iget-object v3, v2, Ldroidninja/filepicker/models/FileType;->extensions:[Ljava/lang/String;

    array-length v4, v3

    const/4 v2, 0x0

    :goto_1
    if-ge v2, v4, :cond_1

    aget-object v1, v3, v2

    .line 114
    .local v1, "string":Ljava/lang/String;
    invoke-virtual {p2, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 115
    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ldroidninja/filepicker/models/FileType;

    .line 118
    .end local v1    # "string":Ljava/lang/String;
    :goto_2
    return-object v2

    .line 113
    .restart local v1    # "string":Ljava/lang/String;
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 112
    .end local v1    # "string":Ljava/lang/String;
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 118
    :cond_2
    const/4 v2, 0x0

    goto :goto_2
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 25
    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Ldroidninja/filepicker/cursors/DocScannerTask;->doInBackground([Ljava/lang/Void;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/util/List;
    .locals 8
    .param p1, "voids"    # [Ljava/lang/Void;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/Void;",
            ")",
            "Ljava/util/List",
            "<",
            "Ldroidninja/filepicker/models/Document;",
            ">;"
        }
    .end annotation

    .prologue
    .line 47
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 48
    .local v7, "documents":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ldroidninja/filepicker/models/Document;>;"
    iget-object v2, p0, Ldroidninja/filepicker/cursors/DocScannerTask;->DOC_PROJECTION:[Ljava/lang/String;

    .line 49
    .local v2, "projection":[Ljava/lang/String;
    const-string v3, "media_type!=1 AND media_type!=3"

    .line 53
    .local v3, "selection":Ljava/lang/String;
    iget-object v0, p0, Ldroidninja/filepicker/cursors/DocScannerTask;->context:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "external"

    invoke-static {v1}, Landroid/provider/MediaStore$Files;->getContentUri(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    const/4 v4, 0x0

    const-string v5, "date_added DESC"

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 59
    .local v6, "cursor":Landroid/database/Cursor;
    if-eqz v6, :cond_0

    .line 60
    invoke-direct {p0, v6}, Ldroidninja/filepicker/cursors/DocScannerTask;->getDocumentFromCursor(Landroid/database/Cursor;)Ljava/util/ArrayList;

    move-result-object v7

    .line 61
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 65
    :cond_0
    return-object v7
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 25
    check-cast p1, Ljava/util/List;

    invoke-virtual {p0, p1}, Ldroidninja/filepicker/cursors/DocScannerTask;->onPostExecute(Ljava/util/List;)V

    return-void
.end method

.method protected onPostExecute(Ljava/util/List;)V
    .locals 1
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
    .line 70
    .local p1, "documents":Ljava/util/List;, "Ljava/util/List<Ldroidninja/filepicker/models/Document;>;"
    invoke-super {p0, p1}, Landroid/os/AsyncTask;->onPostExecute(Ljava/lang/Object;)V

    .line 71
    iget-object v0, p0, Ldroidninja/filepicker/cursors/DocScannerTask;->resultCallback:Ldroidninja/filepicker/cursors/loadercallbacks/FileResultCallback;

    if-eqz v0, :cond_0

    .line 72
    iget-object v0, p0, Ldroidninja/filepicker/cursors/DocScannerTask;->resultCallback:Ldroidninja/filepicker/cursors/loadercallbacks/FileResultCallback;

    invoke-interface {v0, p1}, Ldroidninja/filepicker/cursors/loadercallbacks/FileResultCallback;->onResultCallback(Ljava/util/List;)V

    .line 74
    :cond_0
    return-void
.end method
