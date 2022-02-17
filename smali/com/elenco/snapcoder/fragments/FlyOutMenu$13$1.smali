.class Lcom/elenco/snapcoder/fragments/FlyOutMenu$13$1;
.super Ljava/lang/Object;
.source "FlyOutMenu.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/elenco/snapcoder/fragments/FlyOutMenu$13;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/elenco/snapcoder/fragments/FlyOutMenu$13;


# direct methods
.method constructor <init>(Lcom/elenco/snapcoder/fragments/FlyOutMenu$13;)V
    .locals 0
    .param p1, "this$1"    # Lcom/elenco/snapcoder/fragments/FlyOutMenu$13;

    .prologue
    .line 327
    iput-object p1, p0, Lcom/elenco/snapcoder/fragments/FlyOutMenu$13$1;->this$1:Lcom/elenco/snapcoder/fragments/FlyOutMenu$13;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 330
    iget-object v0, p0, Lcom/elenco/snapcoder/fragments/FlyOutMenu$13$1;->this$1:Lcom/elenco/snapcoder/fragments/FlyOutMenu$13;

    iget-object v0, v0, Lcom/elenco/snapcoder/fragments/FlyOutMenu$13;->val$blocklyFragment:Landroid/support/v4/app/Fragment;

    if-eqz v0, :cond_0

    .line 332
    iget-object v0, p0, Lcom/elenco/snapcoder/fragments/FlyOutMenu$13$1;->this$1:Lcom/elenco/snapcoder/fragments/FlyOutMenu$13;

    iget-object v0, v0, Lcom/elenco/snapcoder/fragments/FlyOutMenu$13;->val$ft:Landroid/support/v4/app/FragmentTransaction;

    iget-object v1, p0, Lcom/elenco/snapcoder/fragments/FlyOutMenu$13$1;->this$1:Lcom/elenco/snapcoder/fragments/FlyOutMenu$13;

    iget-object v1, v1, Lcom/elenco/snapcoder/fragments/FlyOutMenu$13;->val$blocklyFragment:Landroid/support/v4/app/Fragment;

    invoke-virtual {v0, v1}, Landroid/support/v4/app/FragmentTransaction;->remove(Landroid/support/v4/app/Fragment;)Landroid/support/v4/app/FragmentTransaction;

    .line 333
    iget-object v0, p0, Lcom/elenco/snapcoder/fragments/FlyOutMenu$13$1;->this$1:Lcom/elenco/snapcoder/fragments/FlyOutMenu$13;

    iget-object v0, v0, Lcom/elenco/snapcoder/fragments/FlyOutMenu$13;->val$ft:Landroid/support/v4/app/FragmentTransaction;

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentTransaction;->commitAllowingStateLoss()I

    .line 335
    :cond_0
    return-void
.end method
