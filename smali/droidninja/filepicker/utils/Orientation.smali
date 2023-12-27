.class public final enum Ldroidninja/filepicker/utils/Orientation;
.super Ljava/lang/Enum;
.source "Orientation.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Ldroidninja/filepicker/utils/Orientation;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Ldroidninja/filepicker/utils/Orientation;

.field public static final enum LANDSCAPE_ONLY:Ldroidninja/filepicker/utils/Orientation;

.field public static final enum PORTRAIT_ONLY:Ldroidninja/filepicker/utils/Orientation;

.field public static final enum UNSPECIFIED:Ldroidninja/filepicker/utils/Orientation;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 8
    new-instance v0, Ldroidninja/filepicker/utils/Orientation;

    const-string v1, "PORTRAIT_ONLY"

    invoke-direct {v0, v1, v2}, Ldroidninja/filepicker/utils/Orientation;-><init>(Ljava/lang/String;I)V

    sput-object v0, Ldroidninja/filepicker/utils/Orientation;->PORTRAIT_ONLY:Ldroidninja/filepicker/utils/Orientation;

    .line 9
    new-instance v0, Ldroidninja/filepicker/utils/Orientation;

    const-string v1, "LANDSCAPE_ONLY"

    invoke-direct {v0, v1, v3}, Ldroidninja/filepicker/utils/Orientation;-><init>(Ljava/lang/String;I)V

    sput-object v0, Ldroidninja/filepicker/utils/Orientation;->LANDSCAPE_ONLY:Ldroidninja/filepicker/utils/Orientation;

    .line 10
    new-instance v0, Ldroidninja/filepicker/utils/Orientation;

    const-string v1, "UNSPECIFIED"

    invoke-direct {v0, v1, v4}, Ldroidninja/filepicker/utils/Orientation;-><init>(Ljava/lang/String;I)V

    sput-object v0, Ldroidninja/filepicker/utils/Orientation;->UNSPECIFIED:Ldroidninja/filepicker/utils/Orientation;

    .line 7
    const/4 v0, 0x3

    new-array v0, v0, [Ldroidninja/filepicker/utils/Orientation;

    sget-object v1, Ldroidninja/filepicker/utils/Orientation;->PORTRAIT_ONLY:Ldroidninja/filepicker/utils/Orientation;

    aput-object v1, v0, v2

    sget-object v1, Ldroidninja/filepicker/utils/Orientation;->LANDSCAPE_ONLY:Ldroidninja/filepicker/utils/Orientation;

    aput-object v1, v0, v3

    sget-object v1, Ldroidninja/filepicker/utils/Orientation;->UNSPECIFIED:Ldroidninja/filepicker/utils/Orientation;

    aput-object v1, v0, v4

    sput-object v0, Ldroidninja/filepicker/utils/Orientation;->$VALUES:[Ldroidninja/filepicker/utils/Orientation;

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
    .line 7
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Ldroidninja/filepicker/utils/Orientation;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 7
    const-class v0, Ldroidninja/filepicker/utils/Orientation;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Ldroidninja/filepicker/utils/Orientation;

    return-object v0
.end method

.method public static values()[Ldroidninja/filepicker/utils/Orientation;
    .locals 1

    .prologue
    .line 7
    sget-object v0, Ldroidninja/filepicker/utils/Orientation;->$VALUES:[Ldroidninja/filepicker/utils/Orientation;

    invoke-virtual {v0}, [Ldroidninja/filepicker/utils/Orientation;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ldroidninja/filepicker/utils/Orientation;

    return-object v0
.end method
