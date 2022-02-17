.class Lcom/elenco/snapcoder/fragments/FlyOutMenuLandscape$14$1;
.super Ljava/lang/Object;
.source "FlyOutMenuLandscape.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/elenco/snapcoder/fragments/FlyOutMenuLandscape$14;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/elenco/snapcoder/fragments/FlyOutMenuLandscape$14;


# direct methods
.method constructor <init>(Lcom/elenco/snapcoder/fragments/FlyOutMenuLandscape$14;)V
    .locals 0
    .param p1, "this$1"    # Lcom/elenco/snapcoder/fragments/FlyOutMenuLandscape$14;

    .prologue
    .line 328
    iput-object p1, p0, Lcom/elenco/snapcoder/fragments/FlyOutMenuLandscape$14$1;->this$1:Lcom/elenco/snapcoder/fragments/FlyOutMenuLandscape$14;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 331
    iget-object v0, p0, Lcom/elenco/snapcoder/fragments/FlyOutMenuLandscape$14$1;->this$1:Lcom/elenco/snapcoder/fragments/FlyOutMenuLandscape$14;

    iget-object v0, v0, Lcom/elenco/snapcoder/fragments/FlyOutMenuLandscape$14;->val$blocklyFragment:Landroid/support/v4/app/Fragment;

    if-eqz v0, :cond_0

    .line 333
    iget-object v0, p0, Lcom/elenco/snapcoder/fragments/FlyOutMenuLandscape$14$1;->this$1:Lcom/elenco/snapcoder/fragments/FlyOutMenuLandscape$14;

    iget-object v0, v0, Lcom/elenco/snapcoder/fragments/FlyOutMenuLandscape$14;->val$ft:Landroid/support/v4/app/FragmentTransaction;

    iget-object v1, p0, Lcom/elenco/snapcoder/fragments/FlyOutMenuLandscape$14$1;->this$1:Lcom/elenco/snapcoder/fragments/FlyOutMenuLandscape$14;

    iget-object v1, v1, Lcom/elenco/snapcoder/fragments/FlyOutMenuLandscape$14;->val$blocklyFragment:Landroid/support/v4/app/Fragment;

    invoke-virtual {v0, v1}, Landroid/support/v4/app/FragmentTransaction;->remove(Landroid/support/v4/app/Fragment;)Landroid/support/v4/app/FragmentTransaction;

    .line 334
    iget-object v0, p0, Lcom/elenco/snapcoder/fragments/FlyOutMenuLandscape$14$1;->this$1:Lcom/elenco/snapcoder/fragments/FlyOutMenuLandscape$14;

    iget-object v0, v0, Lcom/elenco/snapcoder/fragments/FlyOutMenuLandscape$14;->val$ft:Landroid/support/v4/app/FragmentTransaction;

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentTransaction;->commitAllowingStateLoss()I

    .line 336
    :cond_0
    return-void
.end method
