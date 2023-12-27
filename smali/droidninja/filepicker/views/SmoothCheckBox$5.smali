.class Ldroidninja/filepicker/views/SmoothCheckBox$5;
.super Ljava/lang/Object;
.source "SmoothCheckBox.java"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ldroidninja/filepicker/views/SmoothCheckBox;->startUnCheckedAnimation()V
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
    .line 341
    iput-object p1, p0, Ldroidninja/filepicker/views/SmoothCheckBox$5;->this$0:Ldroidninja/filepicker/views/SmoothCheckBox;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 4
    .param p1, "animation"    # Landroid/animation/ValueAnimator;

    .prologue
    .line 344
    iget-object v1, p0, Ldroidninja/filepicker/views/SmoothCheckBox$5;->this$0:Ldroidninja/filepicker/views/SmoothCheckBox;

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    invoke-static {v1, v0}, Ldroidninja/filepicker/views/SmoothCheckBox;->access$402(Ldroidninja/filepicker/views/SmoothCheckBox;F)F

    .line 345
    iget-object v0, p0, Ldroidninja/filepicker/views/SmoothCheckBox$5;->this$0:Ldroidninja/filepicker/views/SmoothCheckBox;

    iget-object v1, p0, Ldroidninja/filepicker/views/SmoothCheckBox$5;->this$0:Ldroidninja/filepicker/views/SmoothCheckBox;

    invoke-static {v1}, Ldroidninja/filepicker/views/SmoothCheckBox;->access$700(Ldroidninja/filepicker/views/SmoothCheckBox;)I

    move-result v1

    invoke-static {}, Ldroidninja/filepicker/views/SmoothCheckBox;->access$1000()I

    move-result v2

    iget-object v3, p0, Ldroidninja/filepicker/views/SmoothCheckBox$5;->this$0:Ldroidninja/filepicker/views/SmoothCheckBox;

    invoke-static {v3}, Ldroidninja/filepicker/views/SmoothCheckBox;->access$400(Ldroidninja/filepicker/views/SmoothCheckBox;)F

    move-result v3

    invoke-static {v1, v2, v3}, Ldroidninja/filepicker/views/SmoothCheckBox;->access$800(IIF)I

    move-result v1

    invoke-static {v0, v1}, Ldroidninja/filepicker/views/SmoothCheckBox;->access$502(Ldroidninja/filepicker/views/SmoothCheckBox;I)I

    .line 346
    iget-object v0, p0, Ldroidninja/filepicker/views/SmoothCheckBox$5;->this$0:Ldroidninja/filepicker/views/SmoothCheckBox;

    invoke-virtual {v0}, Ldroidninja/filepicker/views/SmoothCheckBox;->postInvalidate()V

    .line 347
    return-void
.end method
