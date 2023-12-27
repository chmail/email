.class public Ldroidninja/filepicker/utils/ImageCaptureManager;
.super Ljava/lang/Object;
.source "ImageCaptureManager.java"


# static fields
.field private static final CAPTURED_PHOTO_PATH_KEY:Ljava/lang/String; = "mCurrentPhotoPath"

.field public static final REQUEST_TAKE_PHOTO:I = 0x101


# instance fields
.field private mContext:Landroid/content/Context;

.field private mCurrentPhotoPath:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .param p1, "mContext"    # Landroid/content/Context;

    .prologue
    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    iput-object p1, p0, Ldroidninja/filepicker/utils/ImageCaptureManager;->mContext:Landroid/content/Context;

    .line 34
    return-void
.end method

.method private createImageFile()Ljava/io/File;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 39
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "JPEG_"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ".jpg"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 40
    .local v1, "imageFileName":Ljava/lang/String;
    sget-object v3, Landroid/os/Environment;->DIRECTORY_PICTURES:Ljava/lang/String;

    invoke-static {v3}, Landroid/os/Environment;->getExternalStoragePublicDirectory(Ljava/lang/String;)Ljava/io/File;

    move-result-object v2

    .line 42
    .local v2, "storageDir":Ljava/io/File;
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v3

    if-nez v3, :cond_0

    .line 43
    invoke-virtual {v2}, Ljava/io/File;->mkdir()Z

    move-result v3

    if-nez v3, :cond_0

    .line 44
    const-string v3, "TAG"

    const-string v4, "Throwing Errors...."

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 45
    new-instance v3, Ljava/io/IOException;

    invoke-direct {v3}, Ljava/io/IOException;-><init>()V

    throw v3

    .line 49
    :cond_0
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, v2, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 57
    .local v0, "image":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Ldroidninja/filepicker/utils/ImageCaptureManager;->mCurrentPhotoPath:Ljava/lang/String;

    .line 58
    return-object v0
.end method


# virtual methods
.method public dispatchTakePictureIntent(Landroid/content/Context;)Landroid/content/Intent;
    .locals 5
    .param p1, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 63
    new-instance v2, Landroid/content/Intent;

    const-string v3, "android.media.action.IMAGE_CAPTURE"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 65
    .local v2, "takePictureIntent":Landroid/content/Intent;
    iget-object v3, p0, Ldroidninja/filepicker/utils/ImageCaptureManager;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/content/Intent;->resolveActivity(Landroid/content/pm/PackageManager;)Landroid/content/ComponentName;

    move-result-object v3

    if-eqz v3, :cond_1

    .line 67
    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v4, 0x18

    if-lt v3, v4, :cond_0

    .line 68
    invoke-direct {p0}, Ldroidninja/filepicker/utils/ImageCaptureManager;->createImageFile()Ljava/io/File;

    move-result-object v0

    .line 69
    .local v0, "newFile":Ljava/io/File;
    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 70
    const/4 v3, 0x2

    invoke-virtual {v2, v3}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 71
    invoke-static {}, Ldroidninja/filepicker/PickerManager;->getInstance()Ldroidninja/filepicker/PickerManager;

    move-result-object v3

    invoke-virtual {v3}, Ldroidninja/filepicker/PickerManager;->getProviderAuthorities()Ljava/lang/String;

    move-result-object v3

    invoke-static {p1, v3, v0}, Landroid/support/v4/content/FileProvider;->getUriForFile(Landroid/content/Context;Ljava/lang/String;Ljava/io/File;)Landroid/net/Uri;

    move-result-object v1

    .line 72
    .local v1, "photoURI":Landroid/net/Uri;
    const-string v3, "output"

    invoke-virtual {v2, v3, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 78
    .end local v0    # "newFile":Ljava/io/File;
    .end local v1    # "photoURI":Landroid/net/Uri;
    .end local v2    # "takePictureIntent":Landroid/content/Intent;
    :goto_0
    return-object v2

    .line 74
    .restart local v2    # "takePictureIntent":Landroid/content/Intent;
    :cond_0
    const-string v3, "output"

    invoke-direct {p0}, Ldroidninja/filepicker/utils/ImageCaptureManager;->createImageFile()Ljava/io/File;

    move-result-object v4

    invoke-static {v4}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    goto :goto_0

    .line 78
    :cond_1
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public galleryAddPic()Ljava/lang/String;
    .locals 4

    .prologue
    .line 83
    new-instance v2, Landroid/content/Intent;

    const-string v3, "android.intent.action.MEDIA_SCANNER_SCAN_FILE"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 85
    .local v2, "mediaScanIntent":Landroid/content/Intent;
    iget-object v3, p0, Ldroidninja/filepicker/utils/ImageCaptureManager;->mCurrentPhotoPath:Ljava/lang/String;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 86
    const/4 v3, 0x0

    .line 94
    :goto_0
    return-object v3

    .line 89
    :cond_0
    new-instance v1, Ljava/io/File;

    iget-object v3, p0, Ldroidninja/filepicker/utils/ImageCaptureManager;->mCurrentPhotoPath:Ljava/lang/String;

    invoke-direct {v1, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 90
    .local v1, "f":Ljava/io/File;
    invoke-static {v1}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v0

    .line 91
    .local v0, "contentUri":Landroid/net/Uri;
    invoke-virtual {v2, v0}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 92
    iget-object v3, p0, Ldroidninja/filepicker/utils/ImageCaptureManager;->mContext:Landroid/content/Context;

    invoke-virtual {v3, v2}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 94
    iget-object v3, p0, Ldroidninja/filepicker/utils/ImageCaptureManager;->mCurrentPhotoPath:Ljava/lang/String;

    goto :goto_0
.end method

.method public getCurrentPhotoPath()Ljava/lang/String;
    .locals 1

    .prologue
    .line 110
    iget-object v0, p0, Ldroidninja/filepicker/utils/ImageCaptureManager;->mCurrentPhotoPath:Ljava/lang/String;

    return-object v0
.end method

.method public final notifyMediaStoreScanner(Landroid/content/Context;Ljava/io/File;)V
    .locals 5
    .param p1, "mContext"    # Landroid/content/Context;
    .param p2, "file"    # Ljava/io/File;

    .prologue
    .line 99
    :try_start_0
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    .line 100
    invoke-virtual {p2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    .line 99
    invoke-static {v1, v2, v3, v4}, Landroid/provider/MediaStore$Images$Media;->insertImage(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 101
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.MEDIA_SCANNER_SCAN_FILE"

    .line 102
    invoke-static {p2}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 101
    invoke-virtual {p1, v1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 106
    :goto_0
    return-void

    .line 103
    :catch_0
    move-exception v0

    .line 104
    .local v0, "e":Ljava/io/FileNotFoundException;
    invoke-virtual {v0}, Ljava/io/FileNotFoundException;->printStackTrace()V

    goto :goto_0
.end method

.method public onRestoreInstanceState(Landroid/os/Bundle;)V
    .locals 1
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 121
    if-eqz p1, :cond_0

    const-string v0, "mCurrentPhotoPath"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 122
    const-string v0, "mCurrentPhotoPath"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Ldroidninja/filepicker/utils/ImageCaptureManager;->mCurrentPhotoPath:Ljava/lang/String;

    .line 124
    :cond_0
    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 115
    if-eqz p1, :cond_0

    iget-object v0, p0, Ldroidninja/filepicker/utils/ImageCaptureManager;->mCurrentPhotoPath:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 116
    const-string v0, "mCurrentPhotoPath"

    iget-object v1, p0, Ldroidninja/filepicker/utils/ImageCaptureManager;->mCurrentPhotoPath:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 118
    :cond_0
    return-void
.end method
