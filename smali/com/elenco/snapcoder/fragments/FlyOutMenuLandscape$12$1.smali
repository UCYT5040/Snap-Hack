.class Lcom/elenco/snapcoder/fragments/FlyOutMenuLandscape$12$1;
.super Ljava/lang/Object;
.source "FlyOutMenuLandscape.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/elenco/snapcoder/fragments/FlyOutMenuLandscape$12;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/elenco/snapcoder/fragments/FlyOutMenuLandscape$12;


# direct methods
.method constructor <init>(Lcom/elenco/snapcoder/fragments/FlyOutMenuLandscape$12;)V
    .locals 0
    .param p1, "this$1"    # Lcom/elenco/snapcoder/fragments/FlyOutMenuLandscape$12;

    .prologue
    .line 262
    iput-object p1, p0, Lcom/elenco/snapcoder/fragments/FlyOutMenuLandscape$12$1;->this$1:Lcom/elenco/snapcoder/fragments/FlyOutMenuLandscape$12;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 265
    iget-object v0, p0, Lcom/elenco/snapcoder/fragments/FlyOutMenuLandscape$12$1;->this$1:Lcom/elenco/snapcoder/fragments/FlyOutMenuLandscape$12;

    iget-object v0, v0, Lcom/elenco/snapcoder/fragments/FlyOutMenuLandscape$12;->val$myBots:Landroid/support/v4/app/Fragment;

    if-eqz v0, :cond_0

    .line 266
    iget-object v0, p0, Lcom/elenco/snapcoder/fragments/FlyOutMenuLandscape$12$1;->this$1:Lcom/elenco/snapcoder/fragments/FlyOutMenuLandscape$12;

    iget-object v0, v0, Lcom/elenco/snapcoder/fragments/FlyOutMenuLandscape$12;->val$ft:Landroid/support/v4/app/FragmentTransaction;

    iget-object v1, p0, Lcom/elenco/snapcoder/fragments/FlyOutMenuLandscape$12$1;->this$1:Lcom/elenco/snapcoder/fragments/FlyOutMenuLandscape$12;

    iget-object v1, v1, Lcom/elenco/snapcoder/fragments/FlyOutMenuLandscape$12;->val$myBots:Landroid/support/v4/app/Fragment;

    invoke-virtual {v0, v1}, Landroid/support/v4/app/FragmentTransaction;->remove(Landroid/support/v4/app/Fragment;)Landroid/support/v4/app/FragmentTransaction;

    .line 267
    iget-object v0, p0, Lcom/elenco/snapcoder/fragments/FlyOutMenuLandscape$12$1;->this$1:Lcom/elenco/snapcoder/fragments/FlyOutMenuLandscape$12;

    iget-object v0, v0, Lcom/elenco/snapcoder/fragments/FlyOutMenuLandscape$12;->val$ft:Landroid/support/v4/app/FragmentTransaction;

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentTransaction;->commitAllowingStateLoss()I

    .line 269
    :cond_0
    return-void
.end method
