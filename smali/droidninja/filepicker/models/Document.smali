.class public Ldroidninja/filepicker/models/Document;
.super Ldroidninja/filepicker/models/BaseFile;
.source "Document.java"


# instance fields
.field private fileType:Ldroidninja/filepicker/models/FileType;

.field private mimeType:Ljava/lang/String;

.field private size:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 19
    const/4 v0, 0x0

    invoke-direct {p0, v0, v1, v1}, Ldroidninja/filepicker/models/BaseFile;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    .line 20
    return-void
.end method

.method public constructor <init>(ILjava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "id"    # I
    .param p2, "title"    # Ljava/lang/String;
    .param p3, "path"    # Ljava/lang/String;

    .prologue
    .line 15
    invoke-direct {p0, p1, p2, p3}, Ldroidninja/filepicker/models/BaseFile;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    .line 16
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 5
    .param p1, "o"    # Ljava/lang/Object;

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 24
    if-ne p0, p1, :cond_1

    .line 29
    :cond_0
    :goto_0
    return v1

    .line 25
    :cond_1
    instance-of v3, p1, Ldroidninja/filepicker/models/Document;

    if-nez v3, :cond_2

    move v1, v2

    goto :goto_0

    :cond_2
    move-object v0, p1

    .line 27
    check-cast v0, Ldroidninja/filepicker/models/Document;

    .line 29
    .local v0, "document":Ldroidninja/filepicker/models/Document;
    iget v3, p0, Ldroidninja/filepicker/models/Document;->id:I

    iget v4, v0, Ldroidninja/filepicker/models/Document;->id:I

    if-eq v3, v4, :cond_0

    move v1, v2

    goto :goto_0
.end method

.method public getFileType()Ldroidninja/filepicker/models/FileType;
    .locals 1

    .prologue
    .line 84
    iget-object v0, p0, Ldroidninja/filepicker/models/Document;->fileType:Ldroidninja/filepicker/models/FileType;

    return-object v0
.end method

.method public getId()I
    .locals 1

    .prologue
    .line 46
    iget v0, p0, Ldroidninja/filepicker/models/Document;->id:I

    return v0
.end method

.method public getMimeType()Ljava/lang/String;
    .locals 1

    .prologue
    .line 54
    iget-object v0, p0, Ldroidninja/filepicker/models/Document;->mimeType:Ljava/lang/String;

    return-object v0
.end method

.method public getPath()Ljava/lang/String;
    .locals 1

    .prologue
    .line 38
    iget-object v0, p0, Ldroidninja/filepicker/models/Document;->path:Ljava/lang/String;

    return-object v0
.end method

.method public getSize()Ljava/lang/String;
    .locals 1

    .prologue
    .line 62
    iget-object v0, p0, Ldroidninja/filepicker/models/Document;->size:Ljava/lang/String;

    return-object v0
.end method

.method public getTitle()Ljava/lang/String;
    .locals 2

    .prologue
    .line 70
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Ldroidninja/filepicker/models/Document;->path:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public hashCode()I
    .locals 1

    .prologue
    .line 34
    iget v0, p0, Ldroidninja/filepicker/models/Document;->id:I

    return v0
.end method

.method public isThisType([Ljava/lang/String;)Z
    .locals 1
    .param p1, "types"    # [Ljava/lang/String;

    .prologue
    .line 79
    iget-object v0, p0, Ldroidninja/filepicker/models/Document;->path:Ljava/lang/String;

    invoke-static {p1, v0}, Ldroidninja/filepicker/utils/Utils;->contains([Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public setFileType(Ldroidninja/filepicker/models/FileType;)V
    .locals 0
    .param p1, "fileType"    # Ldroidninja/filepicker/models/FileType;

    .prologue
    .line 88
    iput-object p1, p0, Ldroidninja/filepicker/models/Document;->fileType:Ldroidninja/filepicker/models/FileType;

    .line 89
    return-void
.end method

.method public setId(I)V
    .locals 0
    .param p1, "id"    # I

    .prologue
    .line 50
    iput p1, p0, Ldroidninja/filepicker/models/Document;->id:I

    .line 51
    return-void
.end method

.method public setMimeType(Ljava/lang/String;)V
    .locals 0
    .param p1, "mimeType"    # Ljava/lang/String;

    .prologue
    .line 58
    iput-object p1, p0, Ldroidninja/filepicker/models/Document;->mimeType:Ljava/lang/String;

    .line 59
    return-void
.end method

.method public setPath(Ljava/lang/String;)V
    .locals 0
    .param p1, "path"    # Ljava/lang/String;

    .prologue
    .line 42
    iput-object p1, p0, Ldroidninja/filepicker/models/Document;->path:Ljava/lang/String;

    .line 43
    return-void
.end method

.method public setSize(Ljava/lang/String;)V
    .locals 0
    .param p1, "size"    # Ljava/lang/String;

    .prologue
    .line 66
    iput-object p1, p0, Ldroidninja/filepicker/models/Document;->size:Ljava/lang/String;

    .line 67
    return-void
.end method

.method public setTitle(Ljava/lang/String;)V
    .locals 0
    .param p1, "title"    # Ljava/lang/String;

    .prologue
    .line 74
    iput-object p1, p0, Ldroidninja/filepicker/models/Document;->name:Ljava/lang/String;

    .line 75
    return-void
.end method
