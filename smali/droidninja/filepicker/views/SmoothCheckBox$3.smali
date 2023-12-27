.class Ldroidninja/filepicker/views/SmoothCheckBox$3;
.super Ljava/lang/Object;
.source "SmoothCheckBox.java"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ldroidninja/filepicker/views/SmoothCheckBox;->startCheckedAnimation()V
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
    .line 312
    iput-object p1, p0, Ldroidninja/filepicker/views/SmoothCheckBox$3;->this$0:Ldroidninja/filepicker/views/SmoothCheckBox;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 5
    .param p1, "animation"    # Landroid/animation/ValueAnimator;

    .prologue
    .line 315
    iget-object v1, p0, Ldroidninja/filepicker/views/SmoothCheckBox$3;->this$0:Ldroidninja/filepicker/views/SmoothCheckBox;

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    invoke-static {v1, v0}, Ldroidninja/filepicker/views/SmoothCheckBox;->access$402(Ldroidninja/filepicker/views/SmoothCheckBox;F)F

    .line 316
    iget-object v0, p0, Ldroidninja/filepicker/views/SmoothCheckBox$3;->this$0:Ldroidninja/filepicker/views/SmoothCheckBox;

    iget-object v1, p0, Ldroidninja/filepicker/views/SmoothCheckBox$3;->this$0:Ldroidninja/filepicker/views/SmoothCheckBox;

    invoke-static {v1}, Ldroidninja/filepicker/views/SmoothCheckBox;->access$600(Ldroidninja/filepicker/views/SmoothCheckBox;)I

    move-result v1

    iget-object v2, p0, Ldroidninja/filepicker/views/SmoothCheckBox$3;->this$0:Ldroidninja/filepicker/views/SmoothCheckBox;

    invoke-static {v2}, Ldroidninja/filepicker/views/SmoothCheckBox;->access$700(Ldroidninja/filepicker/views/SmoothCheckBox;)I

    move-result v2

    const/high16 v3, 0x3f800000    # 1.0f

    iget-object v4, p0, Ldroidninja/filepicker/views/SmoothCheckBox$3;->this$0:Ldroidninja/filepicker/views/SmoothCheckBox;

    invoke-static {v4}, Ldroidninja/filepicker/views/SmoothCheckBox;->access$400(Ldroidninja/filepicker/views/SmoothCheckBox;)F

    move-result v4

    sub-float/2addr v3, v4

    invoke-static {v1, v2, v3}, Ldroidninja/filepicker/views/SmoothCheckBox;->access$800(IIF)I

    move-result v1

    invoke-static {v0, v1}, Ldroidninja/filepicker/views/SmoothCheckBox;->access$502(Ldroidninja/filepicker/views/SmoothCheckBox;I)I

    .line 317
    iget-object v0, p0, Ldroidninja/filepicker/views/SmoothCheckBox$3;->this$0:Ldroidninja/filepicker/views/SmoothCheckBox;

    invoke-virtual {v0}, Ldroidninja/filepicker/views/SmoothCheckBox;->postInvalidate()V

    .line 318
    return-void
.end method
