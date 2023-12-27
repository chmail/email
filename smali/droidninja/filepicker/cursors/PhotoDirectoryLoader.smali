.class public Ldroidninja/filepicker/cursors/PhotoDirectoryLoader;
.super Landroid/support/v4/content/CursorLoader;
.source "PhotoDirectoryLoader.java"


# instance fields
.field final IMAGE_PROJECTION:[Ljava/lang/String;


# direct methods
.method private constructor <init>(Landroid/content/Context;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "uri"    # Landroid/net/Uri;
    .param p3, "projection"    # [Ljava/lang/String;
    .param p4, "selection"    # Ljava/lang/String;
    .param p5, "selectionArgs"    # [Ljava/lang/String;
    .param p6, "sortOrder"    # Ljava/lang/String;

    .prologue
    .line 53
    invoke-direct/range {p0 .. p6}, Landroid/support/v4/content/CursorLoader;-><init>(Landroid/content/Context;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V

    .line 16
    const/4 v0, 0x6

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "_id"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "_data"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "bucket_id"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "bucket_display_name"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "date_added"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "title"

    aput-object v2, v0, v1

    iput-object v0, p0, Ldroidninja/filepicker/cursors/PhotoDirectoryLoader;->IMAGE_PROJECTION:[Ljava/lang/String;

    .line 54
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/os/Bundle;)V
    .locals 9
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "args"    # Landroid/os/Bundle;

    .prologue
    const/4 v8, 0x0

    const/4 v7, 0x3

    const/4 v6, 0x1

    .line 26
    invoke-direct {p0, p1}, Landroid/support/v4/content/CursorLoader;-><init>(Landroid/content/Context;)V

    .line 16
    const/4 v3, 0x6

    new-array v3, v3, [Ljava/lang/String;

    const/4 v4, 0x0

    const-string v5, "_id"

    aput-object v5, v3, v4

    const-string v4, "_data"

    aput-object v4, v3, v6

    const/4 v4, 0x2

    const-string v5, "bucket_id"

    aput-object v5, v3, v4

    const-string v4, "bucket_display_name"

    aput-object v4, v3, v7

    const/4 v4, 0x4

    const-string v5, "date_added"

    aput-object v5, v3, v4

    const/4 v4, 0x5

    const-string v5, "title"

    aput-object v5, v3, v4

    iput-object v3, p0, Ldroidninja/filepicker/cursors/PhotoDirectoryLoader;->IMAGE_PROJECTION:[Ljava/lang/String;

    .line 27
    const-string v3, "EXTRA_BUCKET_ID"

    invoke-virtual {p2, v3, v8}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 28
    .local v0, "bucketId":Ljava/lang/String;
    const-string v3, "EXTRA_FILE_TYPE"

    invoke-virtual {p2, v3, v6}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v1

    .line 30
    .local v1, "mediaType":I
    invoke-virtual {p0, v8}, Ldroidninja/filepicker/cursors/PhotoDirectoryLoader;->setProjection([Ljava/lang/String;)V

    .line 31
    const-string v3, "external"

    invoke-static {v3}, Landroid/provider/MediaStore$Files;->getContentUri(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    invoke-virtual {p0, v3}, Ldroidninja/filepicker/cursors/PhotoDirectoryLoader;->setUri(Landroid/net/Uri;)V

    .line 32
    const-string v3, "_id DESC"

    invoke-virtual {p0, v3}, Ldroidninja/filepicker/cursors/PhotoDirectoryLoader;->setSortOrder(Ljava/lang/String;)V

    .line 34
    const-string v2, "media_type=1"

    .line 37
    .local v2, "selection":Ljava/lang/String;
    if-ne v1, v7, :cond_0

    .line 39
    const-string v2, "media_type=3"

    .line 43
    :cond_0
    if-eqz v0, :cond_1

    .line 44
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " AND bucket_id=\'"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\'"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 46
    :cond_1
    invoke-virtual {p0, v2}, Ldroidninja/filepicker/cursors/PhotoDirectoryLoader;->setSelection(Ljava/lang/String;)V

    .line 48
    return-void
.end method
