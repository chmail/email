.class public Ldroidninja/filepicker/FilePickerBuilder;
.super Ljava/lang/Object;
.source "FilePickerBuilder.java"


# instance fields
.field private final mPickerOptionsBundle:Landroid/os/Bundle;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    iput-object v0, p0, Ldroidninja/filepicker/FilePickerBuilder;->mPickerOptionsBundle:Landroid/os/Bundle;

    .line 22
    return-void
.end method

.method public static getInstance()Ldroidninja/filepicker/FilePickerBuilder;
    .locals 1

    .prologue
    .line 26
    new-instance v0, Ldroidninja/filepicker/FilePickerBuilder;

    invoke-direct {v0}, Ldroidninja/filepicker/FilePickerBuilder;-><init>()V

    return-object v0
.end method

.method private start(Landroid/app/Activity;I)V
    .locals 4
    .param p1, "context"    # Landroid/app/Activity;
    .param p2, "pickerType"    # I

    .prologue
    .line 139
    invoke-static {}, Ldroidninja/filepicker/PickerManager;->getInstance()Ldroidninja/filepicker/PickerManager;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ".droidninja.filepicker.provider"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ldroidninja/filepicker/PickerManager;->setProviderAuthorities(Ljava/lang/String;)V

    .line 141
    new-instance v0, Landroid/content/Intent;

    const-class v1, Ldroidninja/filepicker/FilePickerActivity;

    invoke-direct {v0, p1, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 142
    .local v0, "intent":Landroid/content/Intent;
    iget-object v1, p0, Ldroidninja/filepicker/FilePickerBuilder;->mPickerOptionsBundle:Landroid/os/Bundle;

    invoke-virtual {v0, v1}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 144
    const/16 v1, 0x11

    if-ne p2, v1, :cond_0

    .line 145
    const/16 v1, 0xe9

    invoke-virtual {p1, v0, v1}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 148
    :goto_0
    return-void

    .line 147
    :cond_0
    const/16 v1, 0xea

    invoke-virtual {p1, v0, v1}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_0
.end method

.method private start(Landroid/support/v4/app/Fragment;I)V
    .locals 4
    .param p1, "fragment"    # Landroid/support/v4/app/Fragment;
    .param p2, "pickerType"    # I

    .prologue
    .line 152
    invoke-static {}, Ldroidninja/filepicker/PickerManager;->getInstance()Ldroidninja/filepicker/PickerManager;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Landroid/support/v4/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ".droidninja.filepicker.provider"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ldroidninja/filepicker/PickerManager;->setProviderAuthorities(Ljava/lang/String;)V

    .line 154
    new-instance v0, Landroid/content/Intent;

    invoke-virtual {p1}, Landroid/support/v4/app/Fragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    const-class v2, Ldroidninja/filepicker/FilePickerActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 155
    .local v0, "intent":Landroid/content/Intent;
    iget-object v1, p0, Ldroidninja/filepicker/FilePickerBuilder;->mPickerOptionsBundle:Landroid/os/Bundle;

    invoke-virtual {v0, v1}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 156
    const/16 v1, 0x11

    if-ne p2, v1, :cond_0

    .line 157
    const/16 v1, 0xe9

    invoke-virtual {p1, v0, v1}, Landroid/support/v4/app/Fragment;->startActivityForResult(Landroid/content/Intent;I)V

    .line 160
    :goto_0
    return-void

    .line 159
    :cond_0
    const/16 v1, 0xea

    invoke-virtual {p1, v0, v1}, Landroid/support/v4/app/Fragment;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_0
.end method


# virtual methods
.method public addFileSupport(Ljava/lang/String;[Ljava/lang/String;)Ldroidninja/filepicker/FilePickerBuilder;
    .locals 3
    .param p1, "title"    # Ljava/lang/String;
    .param p2, "extensions"    # [Ljava/lang/String;

    .prologue
    .line 109
    invoke-static {}, Ldroidninja/filepicker/PickerManager;->getInstance()Ldroidninja/filepicker/PickerManager;

    move-result-object v0

    new-instance v1, Ldroidninja/filepicker/models/FileType;

    const/4 v2, 0x0

    invoke-direct {v1, p1, p2, v2}, Ldroidninja/filepicker/models/FileType;-><init>(Ljava/lang/String;[Ljava/lang/String;I)V

    invoke-virtual {v0, v1}, Ldroidninja/filepicker/PickerManager;->addFileType(Ldroidninja/filepicker/models/FileType;)V

    .line 110
    return-object p0
.end method

.method public addFileSupport(Ljava/lang/String;[Ljava/lang/String;I)Ldroidninja/filepicker/FilePickerBuilder;
    .locals 2
    .param p1, "title"    # Ljava/lang/String;
    .param p2, "extensions"    # [Ljava/lang/String;
    .param p3, "drawable"    # I
        .annotation build Landroid/support/annotation/DrawableRes;
        .end annotation
    .end param

    .prologue
    .line 103
    invoke-static {}, Ldroidninja/filepicker/PickerManager;->getInstance()Ldroidninja/filepicker/PickerManager;

    move-result-object v0

    new-instance v1, Ldroidninja/filepicker/models/FileType;

    invoke-direct {v1, p1, p2, p3}, Ldroidninja/filepicker/models/FileType;-><init>(Ljava/lang/String;[Ljava/lang/String;I)V

    invoke-virtual {v0, v1}, Ldroidninja/filepicker/PickerManager;->addFileType(Ldroidninja/filepicker/models/FileType;)V

    .line 104
    return-object p0
.end method

.method public enableCameraSupport(Z)Ldroidninja/filepicker/FilePickerBuilder;
    .locals 1
    .param p1, "status"    # Z

    .prologue
    .line 91
    invoke-static {}, Ldroidninja/filepicker/PickerManager;->getInstance()Ldroidninja/filepicker/PickerManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Ldroidninja/filepicker/PickerManager;->setEnableCamera(Z)V

    .line 92
    return-object p0
.end method

.method public enableDocSupport(Z)Ldroidninja/filepicker/FilePickerBuilder;
    .locals 1
    .param p1, "status"    # Z

    .prologue
    .line 85
    invoke-static {}, Ldroidninja/filepicker/PickerManager;->getInstance()Ldroidninja/filepicker/PickerManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Ldroidninja/filepicker/PickerManager;->setDocSupport(Z)V

    .line 86
    return-object p0
.end method

.method public enableImagePicker(Z)Ldroidninja/filepicker/FilePickerBuilder;
    .locals 1
    .param p1, "status"    # Z

    .prologue
    .line 55
    invoke-static {}, Ldroidninja/filepicker/PickerManager;->getInstance()Ldroidninja/filepicker/PickerManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Ldroidninja/filepicker/PickerManager;->setShowImages(Z)V

    .line 56
    return-object p0
.end method

.method public enableSelectAll(Z)Ldroidninja/filepicker/FilePickerBuilder;
    .locals 1
    .param p1, "status"    # Z

    .prologue
    .line 61
    invoke-static {}, Ldroidninja/filepicker/PickerManager;->getInstance()Ldroidninja/filepicker/PickerManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Ldroidninja/filepicker/PickerManager;->enableSelectAll(Z)V

    .line 62
    return-object p0
.end method

.method public enableVideoPicker(Z)Ldroidninja/filepicker/FilePickerBuilder;
    .locals 1
    .param p1, "status"    # Z

    .prologue
    .line 49
    invoke-static {}, Ldroidninja/filepicker/PickerManager;->getInstance()Ldroidninja/filepicker/PickerManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Ldroidninja/filepicker/PickerManager;->setShowVideos(Z)V

    .line 50
    return-object p0
.end method

.method public pickFile(Landroid/app/Activity;)V
    .locals 3
    .param p1, "context"    # Landroid/app/Activity;

    .prologue
    const/16 v2, 0x12

    .line 127
    iget-object v0, p0, Ldroidninja/filepicker/FilePickerBuilder;->mPickerOptionsBundle:Landroid/os/Bundle;

    const-string v1, "EXTRA_PICKER_TYPE"

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 128
    invoke-direct {p0, p1, v2}, Ldroidninja/filepicker/FilePickerBuilder;->start(Landroid/app/Activity;I)V

    .line 129
    return-void
.end method

.method public pickFile(Landroid/support/v4/app/Fragment;)V
    .locals 3
    .param p1, "context"    # Landroid/support/v4/app/Fragment;

    .prologue
    const/16 v2, 0x12

    .line 133
    iget-object v0, p0, Ldroidninja/filepicker/FilePickerBuilder;->mPickerOptionsBundle:Landroid/os/Bundle;

    const-string v1, "EXTRA_PICKER_TYPE"

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 134
    invoke-direct {p0, p1, v2}, Ldroidninja/filepicker/FilePickerBuilder;->start(Landroid/support/v4/app/Fragment;I)V

    .line 135
    return-void
.end method

.method public pickPhoto(Landroid/app/Activity;)V
    .locals 3
    .param p1, "context"    # Landroid/app/Activity;

    .prologue
    const/16 v2, 0x11

    .line 115
    iget-object v0, p0, Ldroidninja/filepicker/FilePickerBuilder;->mPickerOptionsBundle:Landroid/os/Bundle;

    const-string v1, "EXTRA_PICKER_TYPE"

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 116
    invoke-direct {p0, p1, v2}, Ldroidninja/filepicker/FilePickerBuilder;->start(Landroid/app/Activity;I)V

    .line 117
    return-void
.end method

.method public pickPhoto(Landroid/support/v4/app/Fragment;)V
    .locals 3
    .param p1, "context"    # Landroid/support/v4/app/Fragment;

    .prologue
    const/16 v2, 0x11

    .line 121
    iget-object v0, p0, Ldroidninja/filepicker/FilePickerBuilder;->mPickerOptionsBundle:Landroid/os/Bundle;

    const-string v1, "EXTRA_PICKER_TYPE"

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 122
    invoke-direct {p0, p1, v2}, Ldroidninja/filepicker/FilePickerBuilder;->start(Landroid/support/v4/app/Fragment;I)V

    .line 123
    return-void
.end method

.method public setActivityTheme(I)Ldroidninja/filepicker/FilePickerBuilder;
    .locals 1
    .param p1, "theme"    # I

    .prologue
    .line 37
    invoke-static {}, Ldroidninja/filepicker/PickerManager;->getInstance()Ldroidninja/filepicker/PickerManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Ldroidninja/filepicker/PickerManager;->setTheme(I)V

    .line 38
    return-object p0
.end method

.method public setCameraPlaceholder(I)Ldroidninja/filepicker/FilePickerBuilder;
    .locals 1
    .param p1, "drawable"    # I
        .annotation build Landroid/support/annotation/DrawableRes;
        .end annotation
    .end param

    .prologue
    .line 67
    invoke-static {}, Ldroidninja/filepicker/PickerManager;->getInstance()Ldroidninja/filepicker/PickerManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Ldroidninja/filepicker/PickerManager;->setCameraDrawable(I)V

    .line 68
    return-object p0
.end method

.method public setMaxCount(I)Ldroidninja/filepicker/FilePickerBuilder;
    .locals 1
    .param p1, "maxCount"    # I

    .prologue
    .line 31
    invoke-static {}, Ldroidninja/filepicker/PickerManager;->getInstance()Ldroidninja/filepicker/PickerManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Ldroidninja/filepicker/PickerManager;->setMaxCount(I)V

    .line 32
    return-object p0
.end method

.method public setSelectedFiles(Ljava/util/ArrayList;)Ldroidninja/filepicker/FilePickerBuilder;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;)",
            "Ldroidninja/filepicker/FilePickerBuilder;"
        }
    .end annotation

    .prologue
    .line 43
    .local p1, "selectedPhotos":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    iget-object v0, p0, Ldroidninja/filepicker/FilePickerBuilder;->mPickerOptionsBundle:Landroid/os/Bundle;

    const-string v1, "SELECTED_PHOTOS"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putStringArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 44
    return-object p0
.end method

.method public showFolderView(Z)Ldroidninja/filepicker/FilePickerBuilder;
    .locals 1
    .param p1, "status"    # Z

    .prologue
    .line 79
    invoke-static {}, Ldroidninja/filepicker/PickerManager;->getInstance()Ldroidninja/filepicker/PickerManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Ldroidninja/filepicker/PickerManager;->setShowFolderView(Z)V

    .line 80
    return-object p0
.end method

.method public showGifs(Z)Ldroidninja/filepicker/FilePickerBuilder;
    .locals 1
    .param p1, "status"    # Z

    .prologue
    .line 73
    invoke-static {}, Ldroidninja/filepicker/PickerManager;->getInstance()Ldroidninja/filepicker/PickerManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Ldroidninja/filepicker/PickerManager;->setShowGif(Z)V

    .line 74
    return-object p0
.end method

.method public withOrientation(Ldroidninja/filepicker/utils/Orientation;)Ldroidninja/filepicker/FilePickerBuilder;
    .locals 1
    .param p1, "orientation"    # Ldroidninja/filepicker/utils/Orientation;

    .prologue
    .line 97
    invoke-static {}, Ldroidninja/filepicker/PickerManager;->getInstance()Ldroidninja/filepicker/PickerManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Ldroidninja/filepicker/PickerManager;->setOrientation(Ldroidninja/filepicker/utils/Orientation;)V

    .line 98
    return-object p0
.end method
