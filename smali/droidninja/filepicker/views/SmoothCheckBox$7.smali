.class Ldroidninja/filepicker/views/SmoothCheckBox$7;
.super Ljava/lang/Object;
.source "SmoothCheckBox.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ldroidninja/filepicker/views/SmoothCheckBox;->drawTickDelayed()V
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
    .line 365
    iput-object p1, p0, Ldroidninja/filepicker/views/SmoothCheckBox$7;->this$0:Ldroidninja/filepicker/views/SmoothCheckBox;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 368
    iget-object v0, p0, Ldroidninja/filepicker/views/SmoothCheckBox$7;->this$0:Ldroidninja/filepicker/views/SmoothCheckBox;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Ldroidninja/filepicker/views/SmoothCheckBox;->access$002(Ldroidninja/filepicker/views/SmoothCheckBox;Z)Z

    .line 369
    iget-object v0, p0, Ldroidninja/filepicker/views/SmoothCheckBox$7;->this$0:Ldroidninja/filepicker/views/SmoothCheckBox;

    invoke-virtual {v0}, Ldroidninja/filepicker/views/SmoothCheckBox;->postInvalidate()V

    .line 370
    return-void
.end method
