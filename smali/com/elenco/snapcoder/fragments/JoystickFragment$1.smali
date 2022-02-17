.class Lcom/elenco/snapcoder/fragments/JoystickFragment$1;
.super Ljava/lang/Object;
.source "JoystickFragment.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/elenco/snapcoder/fragments/JoystickFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/elenco/snapcoder/fragments/JoystickFragment;


# direct methods
.method constructor <init>(Lcom/elenco/snapcoder/fragments/JoystickFragment;)V
    .locals 0
    .param p1, "this$0"    # Lcom/elenco/snapcoder/fragments/JoystickFragment;

    .prologue
    .line 99
    iput-object p1, p0, Lcom/elenco/snapcoder/fragments/JoystickFragment$1;->this$0:Lcom/elenco/snapcoder/fragments/JoystickFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 5
    .param p1, "v"    # Landroid/view/View;
    .param p2, "event"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v4, 0x1

    .line 102
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v2

    if-ne v2, v4, :cond_1

    .line 104
    iget-object v2, p0, Lcom/elenco/snapcoder/fragments/JoystickFragment$1;->this$0:Lcom/elenco/snapcoder/fragments/JoystickFragment;

    iget-object v2, v2, Lcom/elenco/snapcoder/fragments/JoystickFragment;->joystick:Landroid/widget/ImageView;

    const/high16 v3, 0x3f800000    # 1.0f

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setAlpha(F)V

    .line 105
    iget-object v2, p0, Lcom/elenco/snapcoder/fragments/JoystickFragment$1;->this$0:Lcom/elenco/snapcoder/fragments/JoystickFragment;

    const-string v3, "Center"

    invoke-static {v2, v3}, Lcom/elenco/snapcoder/fragments/JoystickFragment;->access$102(Lcom/elenco/snapcoder/fragments/JoystickFragment;Ljava/lang/String;)Ljava/lang/String;

    .line 117
    :cond_0
    :goto_0
    return v4

    .line 107
    :cond_1
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v2

    if-nez v2, :cond_0

    .line 109
    iget-object v2, p0, Lcom/elenco/snapcoder/fragments/JoystickFragment$1;->this$0:Lcom/elenco/snapcoder/fragments/JoystickFragment;

    iget-object v2, v2, Lcom/elenco/snapcoder/fragments/JoystickFragment;->joystick:Landroid/widget/ImageView;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setAlpha(F)V

    .line 111
    const-string v2, ""

    const-string v3, ""

    invoke-static {v2, v3}, Landroid/content/ClipData;->newPlainText(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Landroid/content/ClipData;

    move-result-object v0

    .line 113
    .local v0, "data":Landroid/content/ClipData;
    new-instance v1, Landroid/view/View$DragShadowBuilder;

    invoke-direct {v1, p1}, Landroid/view/View$DragShadowBuilder;-><init>(Landroid/view/View;)V

    .line 115
    .local v1, "shadowBuilder":Landroid/view/View$DragShadowBuilder;
    iget-object v2, p0, Lcom/elenco/snapcoder/fragments/JoystickFragment$1;->this$0:Lcom/elenco/snapcoder/fragments/JoystickFragment;

    iget-object v2, v2, Lcom/elenco/snapcoder/fragments/JoystickFragment;->view:Landroid/view/View;

    const/4 v3, 0x0

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/view/View;->startDrag(Landroid/content/ClipData;Landroid/view/View$DragShadowBuilder;Ljava/lang/Object;I)Z

    goto :goto_0
.end method
