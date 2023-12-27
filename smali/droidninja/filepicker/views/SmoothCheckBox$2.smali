.class Ldroidninja/filepicker/views/SmoothCheckBox$2;
.super Ljava/lang/Object;
.source "SmoothCheckBox.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ldroidninja/filepicker/views/SmoothCheckBox;->drawTickPath(Landroid/graphics/Canvas;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Ldroidninja/filepicker/views/SmoothCheckBox;


# direct methods
.method constructor <init>(Ldroidninja/filepicker/views/SmoothCheckBox;)V
    .locals 0
    .param p1, "this$0"    # Ldroidninja/filepicker/views/SmoothCheckBox;

    .prologue
    .line 299
    iput-object p1, p0, Ldroidninja/filepicker/views/SmoothCheckBox$2;->this$0:Ldroidninja/filepicker/views/SmoothCheckBox;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 302
    iget-object v0, p0, Ldroidninja/filepicker/views/SmoothCheckBox$2;->this$0:Ldroidninja/filepicker/views/SmoothCheckBox;

    invoke-virtual {v0}, Ldroidninja/filepicker/views/SmoothCheckBox;->postInvalidate()V

    .line 303
    return-void
.end method
