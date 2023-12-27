.class public Ldroidninja/filepicker/models/FileType;
.super Ljava/lang/Object;
.source "FileType.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Ldroidninja/filepicker/models/FileType;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public drawable:I
    .annotation build Landroid/support/annotation/DrawableRes;
    .end annotation
.end field

.field public extensions:[Ljava/lang/String;

.field public title:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 31
    new-instance v0, Ldroidninja/filepicker/models/FileType$1;

    invoke-direct {v0}, Ldroidninja/filepicker/models/FileType$1;-><init>()V

    sput-object v0, Ldroidninja/filepicker/models/FileType;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method protected constructor <init>(Landroid/os/Parcel;)V
    .locals 1
    .param p1, "in"    # Landroid/os/Parcel;

    .prologue
    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Ldroidninja/filepicker/models/FileType;->title:Ljava/lang/String;

    .line 27
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Ldroidninja/filepicker/models/FileType;->drawable:I

    .line 28
    invoke-virtual {p1}, Landroid/os/Parcel;->createStringArray()[Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Ldroidninja/filepicker/models/FileType;->extensions:[Ljava/lang/String;

    .line 29
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;[Ljava/lang/String;I)V
    .locals 0
    .param p1, "title"    # Ljava/lang/String;
    .param p2, "extensions"    # [Ljava/lang/String;
    .param p3, "drawable"    # I

    .prologue
    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20
    iput-object p1, p0, Ldroidninja/filepicker/models/FileType;->title:Ljava/lang/String;

    .line 21
    iput-object p2, p0, Ldroidninja/filepicker/models/FileType;->extensions:[Ljava/lang/String;

    .line 22
    iput p3, p0, Ldroidninja/filepicker/models/FileType;->drawable:I

    .line 23
    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    .line 52
    const/4 v0, 0x0

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 5
    .param p1, "o"    # Ljava/lang/Object;

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 63
    if-ne p0, p1, :cond_1

    .line 68
    :cond_0
    :goto_0
    return v1

    .line 64
    :cond_1
    if-eqz p1, :cond_2

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    if-eq v3, v4, :cond_3

    :cond_2
    move v1, v2

    goto :goto_0

    :cond_3
    move-object v0, p1

    .line 66
    check-cast v0, Ldroidninja/filepicker/models/FileType;

    .line 68
    .local v0, "fileType":Ldroidninja/filepicker/models/FileType;
    iget-object v3, p0, Ldroidninja/filepicker/models/FileType;->title:Ljava/lang/String;

    if-eqz v3, :cond_4

    iget-object v1, p0, Ldroidninja/filepicker/models/FileType;->title:Ljava/lang/String;

    iget-object v2, v0, Ldroidninja/filepicker/models/FileType;->title:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    goto :goto_0

    :cond_4
    iget-object v3, v0, Ldroidninja/filepicker/models/FileType;->title:Ljava/lang/String;

    if-eqz v3, :cond_0

    move v1, v2

    goto :goto_0
.end method

.method public getDrawable()I
    .locals 1

    .prologue
    .line 45
    iget v0, p0, Ldroidninja/filepicker/models/FileType;->drawable:I

    if-nez v0, :cond_0

    .line 46
    sget v0, Ldroidninja/filepicker/R$drawable;->ic_file:I

    .line 47
    :goto_0
    return v0

    :cond_0
    iget v0, p0, Ldroidninja/filepicker/models/FileType;->drawable:I

    goto :goto_0
.end method

.method public hashCode()I
    .locals 1

    .prologue
    .line 72
    iget-object v0, p0, Ldroidninja/filepicker/models/FileType;->title:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Ldroidninja/filepicker/models/FileType;->title:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .param p1, "parcel"    # Landroid/os/Parcel;
    .param p2, "i"    # I

    .prologue
    .line 57
    iget-object v0, p0, Ldroidninja/filepicker/models/FileType;->title:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 58
    iget v0, p0, Ldroidninja/filepicker/models/FileType;->drawable:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 59
    iget-object v0, p0, Ldroidninja/filepicker/models/FileType;->extensions:[Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeStringArray([Ljava/lang/String;)V

    .line 60
    return-void
.end method
