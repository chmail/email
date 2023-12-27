.class public Ldroidninja/filepicker/PickerManager;
.super Ljava/lang/Object;
.source "PickerManager.java"


# static fields
.field private static ourInstance:Ldroidninja/filepicker/PickerManager;


# instance fields
.field private cameraDrawable:I

.field private docFiles:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private docSupport:Z

.field private enableCamera:Z

.field private fileTypes:Ljava/util/LinkedHashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedHashSet",
            "<",
            "Ldroidninja/filepicker/models/FileType;",
            ">;"
        }
    .end annotation
.end field

.field private maxCount:I

.field private mediaFiles:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private orientation:Ldroidninja/filepicker/utils/Orientation;

.field private providerAuthorities:Ljava/lang/String;

.field private showFolderView:Z

.field private showGif:Z

.field private showImages:Z

.field private showSelectAll:Z

.field private showVideos:Z

.field private theme:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 13
    new-instance v0, Ldroidninja/filepicker/PickerManager;

    invoke-direct {v0}, Ldroidninja/filepicker/PickerManager;-><init>()V

    sput-object v0, Ldroidninja/filepicker/PickerManager;->ourInstance:Ldroidninja/filepicker/PickerManager;

    return-void
.end method

.method private constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 14
    const/4 v0, -0x1

    iput v0, p0, Ldroidninja/filepicker/PickerManager;->maxCount:I

    .line 15
    iput-boolean v1, p0, Ldroidninja/filepicker/PickerManager;->showImages:Z

    .line 16
    sget v0, Ldroidninja/filepicker/R$drawable;->ic_camera:I

    iput v0, p0, Ldroidninja/filepicker/PickerManager;->cameraDrawable:I

    .line 27
    sget v0, Ldroidninja/filepicker/R$style;->LibAppTheme:I

    iput v0, p0, Ldroidninja/filepicker/PickerManager;->theme:I

    .line 33
    const/4 v0, 0x0

    iput-boolean v0, p0, Ldroidninja/filepicker/PickerManager;->showSelectAll:Z

    .line 35
    iput-boolean v1, p0, Ldroidninja/filepicker/PickerManager;->docSupport:Z

    .line 37
    iput-boolean v1, p0, Ldroidninja/filepicker/PickerManager;->enableCamera:Z

    .line 39
    sget-object v0, Ldroidninja/filepicker/utils/Orientation;->UNSPECIFIED:Ldroidninja/filepicker/utils/Orientation;

    iput-object v0, p0, Ldroidninja/filepicker/PickerManager;->orientation:Ldroidninja/filepicker/utils/Orientation;

    .line 41
    iput-boolean v1, p0, Ldroidninja/filepicker/PickerManager;->showFolderView:Z

    .line 46
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Ldroidninja/filepicker/PickerManager;->mediaFiles:Ljava/util/ArrayList;

    .line 47
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Ldroidninja/filepicker/PickerManager;->docFiles:Ljava/util/ArrayList;

    .line 48
    new-instance v0, Ljava/util/LinkedHashSet;

    invoke-direct {v0}, Ljava/util/LinkedHashSet;-><init>()V

    iput-object v0, p0, Ldroidninja/filepicker/PickerManager;->fileTypes:Ljava/util/LinkedHashSet;

    .line 49
    return-void
.end method

.method public static getInstance()Ldroidninja/filepicker/PickerManager;
    .locals 1

    .prologue
    .line 19
    sget-object v0, Ldroidninja/filepicker/PickerManager;->ourInstance:Ldroidninja/filepicker/PickerManager;

    return-object v0
.end method


# virtual methods
.method public add(Ljava/lang/String;I)V
    .locals 1
    .param p1, "path"    # Ljava/lang/String;
    .param p2, "type"    # I

    .prologue
    .line 65
    if-eqz p1, :cond_0

    invoke-virtual {p0}, Ldroidninja/filepicker/PickerManager;->shouldAdd()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 66
    iget-object v0, p0, Ldroidninja/filepicker/PickerManager;->mediaFiles:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const/4 v0, 0x1

    if-ne p2, v0, :cond_1

    .line 67
    iget-object v0, p0, Ldroidninja/filepicker/PickerManager;->mediaFiles:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 73
    :cond_0
    :goto_0
    return-void

    .line 68
    :cond_1
    iget-object v0, p0, Ldroidninja/filepicker/PickerManager;->docFiles:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x2

    if-ne p2, v0, :cond_0

    .line 69
    iget-object v0, p0, Ldroidninja/filepicker/PickerManager;->docFiles:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method public add(Ljava/util/ArrayList;I)V
    .locals 2
    .param p2, "type"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;I)V"
        }
    .end annotation

    .prologue
    .line 76
    .local p1, "paths":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    const/4 v0, 0x0

    .local v0, "index":I
    :goto_0
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 77
    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {p0, v1, p2}, Ldroidninja/filepicker/PickerManager;->add(Ljava/lang/String;I)V

    .line 76
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 79
    :cond_0
    return-void
.end method

.method public addDocTypes()V
    .locals 12

    .prologue
    const/4 v11, 0x2

    const/4 v10, 0x1

    const/4 v9, 0x0

    .line 175
    new-array v1, v10, [Ljava/lang/String;

    const-string v5, "pdf"

    aput-object v5, v1, v9

    .line 176
    .local v1, "pdfs":[Ljava/lang/String;
    iget-object v5, p0, Ldroidninja/filepicker/PickerManager;->fileTypes:Ljava/util/LinkedHashSet;

    new-instance v6, Ldroidninja/filepicker/models/FileType;

    const-string v7, "PDF"

    sget v8, Ldroidninja/filepicker/R$drawable;->ic_pdf:I

    invoke-direct {v6, v7, v1, v8}, Ldroidninja/filepicker/models/FileType;-><init>(Ljava/lang/String;[Ljava/lang/String;I)V

    invoke-virtual {v5, v6}, Ljava/util/LinkedHashSet;->add(Ljava/lang/Object;)Z

    .line 178
    const/4 v5, 0x4

    new-array v0, v5, [Ljava/lang/String;

    const-string v5, "doc"

    aput-object v5, v0, v9

    const-string v5, "docx"

    aput-object v5, v0, v10

    const-string v5, "dot"

    aput-object v5, v0, v11

    const/4 v5, 0x3

    const-string v6, "dotx"

    aput-object v6, v0, v5

    .line 179
    .local v0, "docs":[Ljava/lang/String;
    iget-object v5, p0, Ldroidninja/filepicker/PickerManager;->fileTypes:Ljava/util/LinkedHashSet;

    new-instance v6, Ldroidninja/filepicker/models/FileType;

    const-string v7, "DOC"

    sget v8, Ldroidninja/filepicker/R$drawable;->ic_word:I

    invoke-direct {v6, v7, v0, v8}, Ldroidninja/filepicker/models/FileType;-><init>(Ljava/lang/String;[Ljava/lang/String;I)V

    invoke-virtual {v5, v6}, Ljava/util/LinkedHashSet;->add(Ljava/lang/Object;)Z

    .line 181
    new-array v2, v11, [Ljava/lang/String;

    const-string v5, "ppt"

    aput-object v5, v2, v9

    const-string v5, "pptx"

    aput-object v5, v2, v10

    .line 182
    .local v2, "ppts":[Ljava/lang/String;
    iget-object v5, p0, Ldroidninja/filepicker/PickerManager;->fileTypes:Ljava/util/LinkedHashSet;

    new-instance v6, Ldroidninja/filepicker/models/FileType;

    const-string v7, "PPT"

    sget v8, Ldroidninja/filepicker/R$drawable;->ic_ppt:I

    invoke-direct {v6, v7, v2, v8}, Ldroidninja/filepicker/models/FileType;-><init>(Ljava/lang/String;[Ljava/lang/String;I)V

    invoke-virtual {v5, v6}, Ljava/util/LinkedHashSet;->add(Ljava/lang/Object;)Z

    .line 184
    new-array v4, v11, [Ljava/lang/String;

    const-string v5, "xls"

    aput-object v5, v4, v9

    const-string v5, "xlsx"

    aput-object v5, v4, v10

    .line 185
    .local v4, "xlss":[Ljava/lang/String;
    iget-object v5, p0, Ldroidninja/filepicker/PickerManager;->fileTypes:Ljava/util/LinkedHashSet;

    new-instance v6, Ldroidninja/filepicker/models/FileType;

    const-string v7, "XLS"

    sget v8, Ldroidninja/filepicker/R$drawable;->ic_excel:I

    invoke-direct {v6, v7, v4, v8}, Ldroidninja/filepicker/models/FileType;-><init>(Ljava/lang/String;[Ljava/lang/String;I)V

    invoke-virtual {v5, v6}, Ljava/util/LinkedHashSet;->add(Ljava/lang/Object;)Z

    .line 187
    new-array v3, v10, [Ljava/lang/String;

    const-string v5, "txt"

    aput-object v5, v3, v9

    .line 188
    .local v3, "txts":[Ljava/lang/String;
    iget-object v5, p0, Ldroidninja/filepicker/PickerManager;->fileTypes:Ljava/util/LinkedHashSet;

    new-instance v6, Ldroidninja/filepicker/models/FileType;

    const-string v7, "TXT"

    sget v8, Ldroidninja/filepicker/R$drawable;->ic_txt:I

    invoke-direct {v6, v7, v3, v8}, Ldroidninja/filepicker/models/FileType;-><init>(Ljava/lang/String;[Ljava/lang/String;I)V

    invoke-virtual {v5, v6}, Ljava/util/LinkedHashSet;->add(Ljava/lang/Object;)Z

    .line 189
    return-void
.end method

.method public addFileType(Ldroidninja/filepicker/models/FileType;)V
    .locals 1
    .param p1, "fileType"    # Ldroidninja/filepicker/models/FileType;

    .prologue
    .line 170
    iget-object v0, p0, Ldroidninja/filepicker/PickerManager;->fileTypes:Ljava/util/LinkedHashSet;

    invoke-virtual {v0, p1}, Ljava/util/LinkedHashSet;->add(Ljava/lang/Object;)Z

    .line 171
    return-void
.end method

.method public clearSelections()V
    .locals 1

    .prologue
    .line 120
    iget-object v0, p0, Ldroidninja/filepicker/PickerManager;->mediaFiles:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 121
    iget-object v0, p0, Ldroidninja/filepicker/PickerManager;->docFiles:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 122
    return-void
.end method

.method public deleteMedia(Ljava/util/ArrayList;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 125
    .local p1, "paths":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    iget-object v0, p0, Ldroidninja/filepicker/PickerManager;->mediaFiles:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->removeAll(Ljava/util/Collection;)Z

    .line 126
    return-void
.end method

.method public enableSelectAll(Z)V
    .locals 0
    .param p1, "showSelectAll"    # Z

    .prologue
    .line 242
    iput-boolean p1, p0, Ldroidninja/filepicker/PickerManager;->showSelectAll:Z

    .line 243
    return-void
.end method

.method public getCameraDrawable()I
    .locals 1

    .prologue
    .line 234
    iget v0, p0, Ldroidninja/filepicker/PickerManager;->cameraDrawable:I

    return v0
.end method

.method public getCurrentCount()I
    .locals 2

    .prologue
    .line 61
    iget-object v0, p0, Ldroidninja/filepicker/PickerManager;->mediaFiles:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    iget-object v1, p0, Ldroidninja/filepicker/PickerManager;->docFiles:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public getFileTypes()Ljava/util/ArrayList;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Ldroidninja/filepicker/models/FileType;",
            ">;"
        }
    .end annotation

    .prologue
    .line 193
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Ldroidninja/filepicker/PickerManager;->fileTypes:Ljava/util/LinkedHashSet;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    return-object v0
.end method

.method public getMaxCount()I
    .locals 1

    .prologue
    .line 57
    iget v0, p0, Ldroidninja/filepicker/PickerManager;->maxCount:I

    return v0
.end method

.method public getOrientation()Ldroidninja/filepicker/utils/Orientation;
    .locals 1

    .prologue
    .line 213
    iget-object v0, p0, Ldroidninja/filepicker/PickerManager;->orientation:Ldroidninja/filepicker/utils/Orientation;

    return-object v0
.end method

.method public getProviderAuthorities()Ljava/lang/String;
    .locals 1

    .prologue
    .line 221
    iget-object v0, p0, Ldroidninja/filepicker/PickerManager;->providerAuthorities:Ljava/lang/String;

    return-object v0
.end method

.method public getSelectedFilePaths(Ljava/util/ArrayList;)Ljava/util/ArrayList;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Ldroidninja/filepicker/models/BaseFile;",
            ">;)",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 105
    .local p1, "files":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ldroidninja/filepicker/models/BaseFile;>;"
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 106
    .local v1, "paths":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    const/4 v0, 0x0

    .local v0, "index":I
    :goto_0
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v0, v2, :cond_0

    .line 107
    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ldroidninja/filepicker/models/BaseFile;

    invoke-virtual {v2}, Ldroidninja/filepicker/models/BaseFile;->getPath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 106
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 109
    :cond_0
    return-object v1
.end method

.method public getSelectedFiles()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 101
    iget-object v0, p0, Ldroidninja/filepicker/PickerManager;->docFiles:Ljava/util/ArrayList;

    return-object v0
.end method

.method public getSelectedPhotos()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 97
    iget-object v0, p0, Ldroidninja/filepicker/PickerManager;->mediaFiles:Ljava/util/ArrayList;

    return-object v0
.end method

.method public getTheme()I
    .locals 1

    .prologue
    .line 129
    iget v0, p0, Ldroidninja/filepicker/PickerManager;->theme:I

    return v0
.end method

.method public hasSelectAll()Z
    .locals 2

    .prologue
    .line 238
    iget v0, p0, Ldroidninja/filepicker/PickerManager;->maxCount:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    iget-boolean v0, p0, Ldroidninja/filepicker/PickerManager;->showSelectAll:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isDocSupport()Z
    .locals 1

    .prologue
    .line 197
    iget-boolean v0, p0, Ldroidninja/filepicker/PickerManager;->docSupport:Z

    return v0
.end method

.method public isEnableCamera()Z
    .locals 1

    .prologue
    .line 205
    iget-boolean v0, p0, Ldroidninja/filepicker/PickerManager;->enableCamera:Z

    return v0
.end method

.method public isShowFolderView()Z
    .locals 1

    .prologue
    .line 161
    iget-boolean v0, p0, Ldroidninja/filepicker/PickerManager;->showFolderView:Z

    return v0
.end method

.method public isShowGif()Z
    .locals 1

    .prologue
    .line 153
    iget-boolean v0, p0, Ldroidninja/filepicker/PickerManager;->showGif:Z

    return v0
.end method

.method public remove(Ljava/lang/String;I)V
    .locals 1
    .param p1, "path"    # Ljava/lang/String;
    .param p2, "type"    # I

    .prologue
    .line 82
    const/4 v0, 0x1

    if-ne p2, v0, :cond_1

    iget-object v0, p0, Ldroidninja/filepicker/PickerManager;->mediaFiles:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 83
    iget-object v0, p0, Ldroidninja/filepicker/PickerManager;->mediaFiles:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 88
    :cond_0
    :goto_0
    return-void

    .line 85
    :cond_1
    const/4 v0, 0x2

    if-ne p2, v0, :cond_0

    .line 86
    iget-object v0, p0, Ldroidninja/filepicker/PickerManager;->docFiles:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method public reset()V
    .locals 1

    .prologue
    .line 113
    iget-object v0, p0, Ldroidninja/filepicker/PickerManager;->docFiles:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 114
    iget-object v0, p0, Ldroidninja/filepicker/PickerManager;->mediaFiles:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 115
    iget-object v0, p0, Ldroidninja/filepicker/PickerManager;->fileTypes:Ljava/util/LinkedHashSet;

    invoke-virtual {v0}, Ljava/util/LinkedHashSet;->clear()V

    .line 116
    const/4 v0, -0x1

    iput v0, p0, Ldroidninja/filepicker/PickerManager;->maxCount:I

    .line 117
    return-void
.end method

.method public setCameraDrawable(I)V
    .locals 0
    .param p1, "drawable"    # I

    .prologue
    .line 229
    iput p1, p0, Ldroidninja/filepicker/PickerManager;->cameraDrawable:I

    .line 230
    return-void
.end method

.method public setDocSupport(Z)V
    .locals 0
    .param p1, "docSupport"    # Z

    .prologue
    .line 201
    iput-boolean p1, p0, Ldroidninja/filepicker/PickerManager;->docSupport:Z

    .line 202
    return-void
.end method

.method public setEnableCamera(Z)V
    .locals 0
    .param p1, "enableCamera"    # Z

    .prologue
    .line 209
    iput-boolean p1, p0, Ldroidninja/filepicker/PickerManager;->enableCamera:Z

    .line 210
    return-void
.end method

.method public setMaxCount(I)V
    .locals 0
    .param p1, "count"    # I

    .prologue
    .line 52
    invoke-virtual {p0}, Ldroidninja/filepicker/PickerManager;->reset()V

    .line 53
    iput p1, p0, Ldroidninja/filepicker/PickerManager;->maxCount:I

    .line 54
    return-void
.end method

.method public setOrientation(Ldroidninja/filepicker/utils/Orientation;)V
    .locals 0
    .param p1, "orientation"    # Ldroidninja/filepicker/utils/Orientation;

    .prologue
    .line 217
    iput-object p1, p0, Ldroidninja/filepicker/PickerManager;->orientation:Ldroidninja/filepicker/utils/Orientation;

    .line 218
    return-void
.end method

.method public setProviderAuthorities(Ljava/lang/String;)V
    .locals 0
    .param p1, "providerAuthorities"    # Ljava/lang/String;

    .prologue
    .line 225
    iput-object p1, p0, Ldroidninja/filepicker/PickerManager;->providerAuthorities:Ljava/lang/String;

    .line 226
    return-void
.end method

.method public setShowFolderView(Z)V
    .locals 0
    .param p1, "showFolderView"    # Z

    .prologue
    .line 165
    iput-boolean p1, p0, Ldroidninja/filepicker/PickerManager;->showFolderView:Z

    .line 166
    return-void
.end method

.method public setShowGif(Z)V
    .locals 0
    .param p1, "showGif"    # Z

    .prologue
    .line 157
    iput-boolean p1, p0, Ldroidninja/filepicker/PickerManager;->showGif:Z

    .line 158
    return-void
.end method

.method public setShowImages(Z)V
    .locals 0
    .param p1, "showImages"    # Z

    .prologue
    .line 149
    iput-boolean p1, p0, Ldroidninja/filepicker/PickerManager;->showImages:Z

    .line 150
    return-void
.end method

.method public setShowVideos(Z)V
    .locals 0
    .param p1, "showVideos"    # Z

    .prologue
    .line 141
    iput-boolean p1, p0, Ldroidninja/filepicker/PickerManager;->showVideos:Z

    .line 142
    return-void
.end method

.method public setTheme(I)V
    .locals 0
    .param p1, "theme"    # I

    .prologue
    .line 133
    iput p1, p0, Ldroidninja/filepicker/PickerManager;->theme:I

    .line 134
    return-void
.end method

.method public shouldAdd()Z
    .locals 3

    .prologue
    const/4 v0, 0x1

    .line 91
    iget v1, p0, Ldroidninja/filepicker/PickerManager;->maxCount:I

    const/4 v2, -0x1

    if-ne v1, v2, :cond_1

    .line 93
    :cond_0
    :goto_0
    return v0

    :cond_1
    invoke-virtual {p0}, Ldroidninja/filepicker/PickerManager;->getCurrentCount()I

    move-result v1

    iget v2, p0, Ldroidninja/filepicker/PickerManager;->maxCount:I

    if-lt v1, v2, :cond_0

    const/4 v0, 0x0

    goto :goto_0
.end method

.method public showImages()Z
    .locals 1

    .prologue
    .line 145
    iget-boolean v0, p0, Ldroidninja/filepicker/PickerManager;->showImages:Z

    return v0
.end method

.method public showVideo()Z
    .locals 1

    .prologue
    .line 137
    iget-boolean v0, p0, Ldroidninja/filepicker/PickerManager;->showVideos:Z

    return v0
.end method
