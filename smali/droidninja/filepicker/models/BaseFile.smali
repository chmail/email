.class public Ldroidninja/filepicker/models/BaseFile;
.super Ljava/lang/Object;
.source "BaseFile.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Ldroidninja/filepicker/models/BaseFile;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field protected id:I

.field protected name:Ljava/lang/String;

.field protected path:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 31
    new-instance v0, Ldroidninja/filepicker/models/BaseFile$1;

    invoke-direct {v0}, Ldroidninja/filepicker/models/BaseFile$1;-><init>()V

    sput-object v0, Ldroidninja/filepicker/models/BaseFile;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 17
    return-void
.end method

.method public constructor <init>(ILjava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "id"    # I
    .param p2, "name"    # Ljava/lang/String;
    .param p3, "path"    # Ljava/lang/String;

    .prologue
    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20
    iput p1, p0, Ldroidninja/filepicker/models/BaseFile;->id:I

    .line 21
    iput-object p2, p0, Ldroidninja/filepicker/models/BaseFile;->name:Ljava/lang/String;

    .line 22
    iput-object p3, p0, Ldroidninja/filepicker/models/BaseFile;->path:Ljava/lang/String;

    .line 23
    return-void
.end method

.method protected constructor <init>(Landroid/os/Parcel;)V
    .locals 1
    .param p1, "in"    # Landroid/os/Parcel;

    .prologue
    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Ldroidninja/filepicker/models/BaseFile;->id:I

    .line 27
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Ldroidninja/filepicker/models/BaseFile;->name:Ljava/lang/String;

    .line 28
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Ldroidninja/filepicker/models/BaseFile;->path:Ljava/lang/String;

    .line 29
    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    .line 74
    const/4 v0, 0x0

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 5
    .param p1, "o"    # Ljava/lang/Object;

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 47
    if-ne p0, p1, :cond_1

    .line 54
    .end local p1    # "o":Ljava/lang/Object;
    :cond_0
    :goto_0
    return v1

    .line 48
    .restart local p1    # "o":Ljava/lang/Object;
    :cond_1
    instance-of v3, p1, Ldroidninja/filepicker/models/BaseFile;

    if-nez v3, :cond_2

    move v1, v2

    goto :goto_0

    :cond_2
    move-object v0, p1

    .line 50
    check-cast v0, Ldroidninja/filepicker/models/BaseFile;

    .line 51
    .local v0, "baseFile":Ldroidninja/filepicker/models/BaseFile;
    iget-object v3, p0, Ldroidninja/filepicker/models/BaseFile;->path:Ljava/lang/String;

    if-eqz v3, :cond_4

    check-cast p1, Ldroidninja/filepicker/models/BaseFile;

    .end local p1    # "o":Ljava/lang/Object;
    iget-object v3, p1, Ldroidninja/filepicker/models/BaseFile;->path:Ljava/lang/String;

    if-eqz v3, :cond_4

    .line 52
    iget v3, p0, Ldroidninja/filepicker/models/BaseFile;->id:I

    iget v4, v0, Ldroidninja/filepicker/models/BaseFile;->id:I

    if-ne v3, v4, :cond_3

    iget-object v3, p0, Ldroidninja/filepicker/models/BaseFile;->path:Ljava/lang/String;

    iget-object v4, v0, Ldroidninja/filepicker/models/BaseFile;->path:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    :cond_3
    move v1, v2

    goto :goto_0

    .line 54
    :cond_4
    iget v3, p0, Ldroidninja/filepicker/models/BaseFile;->id:I

    iget v4, v0, Ldroidninja/filepicker/models/BaseFile;->id:I

    if-eq v3, v4, :cond_0

    move v1, v2

    goto :goto_0
.end method

.method public getId()I
    .locals 1

    .prologue
    .line 66
    iget v0, p0, Ldroidninja/filepicker/models/BaseFile;->id:I

    return v0
.end method

.method public getPath()Ljava/lang/String;
    .locals 1

    .prologue
    .line 58
    iget-object v0, p0, Ldroidninja/filepicker/models/BaseFile;->path:Ljava/lang/String;

    return-object v0
.end method

.method public isImage()Z
    .locals 3

    .prologue
    .line 42
    const/4 v1, 0x4

    new-array v0, v1, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "jpg"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "jpeg"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "png"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "gif"

    aput-object v2, v0, v1

    .line 43
    .local v0, "types":[Ljava/lang/String;
    iget-object v1, p0, Ldroidninja/filepicker/models/BaseFile;->path:Ljava/lang/String;

    invoke-static {v0, v1}, Ldroidninja/filepicker/utils/Utils;->contains([Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    return v1
.end method

.method public setId(I)V
    .locals 0
    .param p1, "id"    # I

    .prologue
    .line 70
    iput p1, p0, Ldroidninja/filepicker/models/BaseFile;->id:I

    .line 71
    return-void
.end method

.method public setPath(Ljava/lang/String;)V
    .locals 0
    .param p1, "path"    # Ljava/lang/String;

    .prologue
    .line 62
    iput-object p1, p0, Ldroidninja/filepicker/models/BaseFile;->path:Ljava/lang/String;

    .line 63
    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .param p1, "parcel"    # Landroid/os/Parcel;
    .param p2, "i"    # I

    .prologue
    .line 78
    iget v0, p0, Ldroidninja/filepicker/models/BaseFile;->id:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 79
    iget-object v0, p0, Ldroidninja/filepicker/models/BaseFile;->name:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 80
    iget-object v0, p0, Ldroidninja/filepicker/models/BaseFile;->path:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 81
    return-void
.end method
