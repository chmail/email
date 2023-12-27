.class public final enum Ldroidninja/filepicker/FilePickerConst$FILE_TYPE;
.super Ljava/lang/Enum;
.source "FilePickerConst.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ldroidninja/filepicker/FilePickerConst;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "FILE_TYPE"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Ldroidninja/filepicker/FilePickerConst$FILE_TYPE;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Ldroidninja/filepicker/FilePickerConst$FILE_TYPE;

.field public static final enum EXCEL:Ldroidninja/filepicker/FilePickerConst$FILE_TYPE;

.field public static final enum PDF:Ldroidninja/filepicker/FilePickerConst$FILE_TYPE;

.field public static final enum PPT:Ldroidninja/filepicker/FilePickerConst$FILE_TYPE;

.field public static final enum TXT:Ldroidninja/filepicker/FilePickerConst$FILE_TYPE;

.field public static final enum UNKNOWN:Ldroidninja/filepicker/FilePickerConst$FILE_TYPE;

.field public static final enum WORD:Ldroidninja/filepicker/FilePickerConst$FILE_TYPE;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 35
    new-instance v0, Ldroidninja/filepicker/FilePickerConst$FILE_TYPE;

    const-string v1, "PDF"

    invoke-direct {v0, v1, v3}, Ldroidninja/filepicker/FilePickerConst$FILE_TYPE;-><init>(Ljava/lang/String;I)V

    sput-object v0, Ldroidninja/filepicker/FilePickerConst$FILE_TYPE;->PDF:Ldroidninja/filepicker/FilePickerConst$FILE_TYPE;

    .line 36
    new-instance v0, Ldroidninja/filepicker/FilePickerConst$FILE_TYPE;

    const-string v1, "WORD"

    invoke-direct {v0, v1, v4}, Ldroidninja/filepicker/FilePickerConst$FILE_TYPE;-><init>(Ljava/lang/String;I)V

    sput-object v0, Ldroidninja/filepicker/FilePickerConst$FILE_TYPE;->WORD:Ldroidninja/filepicker/FilePickerConst$FILE_TYPE;

    .line 37
    new-instance v0, Ldroidninja/filepicker/FilePickerConst$FILE_TYPE;

    const-string v1, "EXCEL"

    invoke-direct {v0, v1, v5}, Ldroidninja/filepicker/FilePickerConst$FILE_TYPE;-><init>(Ljava/lang/String;I)V

    sput-object v0, Ldroidninja/filepicker/FilePickerConst$FILE_TYPE;->EXCEL:Ldroidninja/filepicker/FilePickerConst$FILE_TYPE;

    .line 38
    new-instance v0, Ldroidninja/filepicker/FilePickerConst$FILE_TYPE;

    const-string v1, "PPT"

    invoke-direct {v0, v1, v6}, Ldroidninja/filepicker/FilePickerConst$FILE_TYPE;-><init>(Ljava/lang/String;I)V

    sput-object v0, Ldroidninja/filepicker/FilePickerConst$FILE_TYPE;->PPT:Ldroidninja/filepicker/FilePickerConst$FILE_TYPE;

    .line 39
    new-instance v0, Ldroidninja/filepicker/FilePickerConst$FILE_TYPE;

    const-string v1, "TXT"

    invoke-direct {v0, v1, v7}, Ldroidninja/filepicker/FilePickerConst$FILE_TYPE;-><init>(Ljava/lang/String;I)V

    sput-object v0, Ldroidninja/filepicker/FilePickerConst$FILE_TYPE;->TXT:Ldroidninja/filepicker/FilePickerConst$FILE_TYPE;

    .line 40
    new-instance v0, Ldroidninja/filepicker/FilePickerConst$FILE_TYPE;

    const-string v1, "UNKNOWN"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Ldroidninja/filepicker/FilePickerConst$FILE_TYPE;-><init>(Ljava/lang/String;I)V

    sput-object v0, Ldroidninja/filepicker/FilePickerConst$FILE_TYPE;->UNKNOWN:Ldroidninja/filepicker/FilePickerConst$FILE_TYPE;

    .line 34
    const/4 v0, 0x6

    new-array v0, v0, [Ldroidninja/filepicker/FilePickerConst$FILE_TYPE;

    sget-object v1, Ldroidninja/filepicker/FilePickerConst$FILE_TYPE;->PDF:Ldroidninja/filepicker/FilePickerConst$FILE_TYPE;

    aput-object v1, v0, v3

    sget-object v1, Ldroidninja/filepicker/FilePickerConst$FILE_TYPE;->WORD:Ldroidninja/filepicker/FilePickerConst$FILE_TYPE;

    aput-object v1, v0, v4

    sget-object v1, Ldroidninja/filepicker/FilePickerConst$FILE_TYPE;->EXCEL:Ldroidninja/filepicker/FilePickerConst$FILE_TYPE;

    aput-object v1, v0, v5

    sget-object v1, Ldroidninja/filepicker/FilePickerConst$FILE_TYPE;->PPT:Ldroidninja/filepicker/FilePickerConst$FILE_TYPE;

    aput-object v1, v0, v6

    sget-object v1, Ldroidninja/filepicker/FilePickerConst$FILE_TYPE;->TXT:Ldroidninja/filepicker/FilePickerConst$FILE_TYPE;

    aput-object v1, v0, v7

    const/4 v1, 0x5

    sget-object v2, Ldroidninja/filepicker/FilePickerConst$FILE_TYPE;->UNKNOWN:Ldroidninja/filepicker/FilePickerConst$FILE_TYPE;

    aput-object v2, v0, v1

    sput-object v0, Ldroidninja/filepicker/FilePickerConst$FILE_TYPE;->$VALUES:[Ldroidninja/filepicker/FilePickerConst$FILE_TYPE;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .prologue
    .line 34
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Ldroidninja/filepicker/FilePickerConst$FILE_TYPE;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 34
    const-class v0, Ldroidninja/filepicker/FilePickerConst$FILE_TYPE;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Ldroidninja/filepicker/FilePickerConst$FILE_TYPE;

    return-object v0
.end method

.method public static values()[Ldroidninja/filepicker/FilePickerConst$FILE_TYPE;
    .locals 1

    .prologue
    .line 34
    sget-object v0, Ldroidninja/filepicker/FilePickerConst$FILE_TYPE;->$VALUES:[Ldroidninja/filepicker/FilePickerConst$FILE_TYPE;

    invoke-virtual {v0}, [Ldroidninja/filepicker/FilePickerConst$FILE_TYPE;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ldroidninja/filepicker/FilePickerConst$FILE_TYPE;

    return-object v0
.end method
