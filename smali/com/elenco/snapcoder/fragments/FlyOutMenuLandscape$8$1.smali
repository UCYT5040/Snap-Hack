.class Lcom/elenco/snapcoder/fragments/FlyOutMenuLandscape$8$1;
.super Ljava/lang/Object;
.source "FlyOutMenuLandscape.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/elenco/snapcoder/fragments/FlyOutMenuLandscape$8;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/elenco/snapcoder/fragments/FlyOutMenuLandscape$8;


# direct methods
.method constructor <init>(Lcom/elenco/snapcoder/fragments/FlyOutMenuLandscape$8;)V
    .locals 0
    .param p1, "this$1"    # Lcom/elenco/snapcoder/fragments/FlyOutMenuLandscape$8;

    .prologue
    .line 120
    iput-object p1, p0, Lcom/elenco/snapcoder/fragments/FlyOutMenuLandscape$8$1;->this$1:Lcom/elenco/snapcoder/fragments/FlyOutMenuLandscape$8;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 124
    iget-object v0, p0, Lcom/elenco/snapcoder/fragments/FlyOutMenuLandscape$8$1;->this$1:Lcom/elenco/snapcoder/fragments/FlyOutMenuLandscape$8;

    iget-object v0, v0, Lcom/elenco/snapcoder/fragments/FlyOutMenuLandscape$8;->this$0:Lcom/elenco/snapcoder/fragments/FlyOutMenuLandscape;

    const-string v1, "BotCode"

    invoke-virtual {v0, v1}, Lcom/elenco/snapcoder/fragments/FlyOutMenuLandscape;->closeAll(Ljava/lang/String;)V

    .line 125
    iget-object v0, p0, Lcom/elenco/snapcoder/fragments/FlyOutMenuLandscape$8$1;->this$1:Lcom/elenco/snapcoder/fragments/FlyOutMenuLandscape$8;

    iget-object v0, v0, Lcom/elenco/snapcoder/fragments/FlyOutMenuLandscape$8;->this$0:Lcom/elenco/snapcoder/fragments/FlyOutMenuLandscape;

    iget-object v1, p0, Lcom/elenco/snapcoder/fragments/FlyOutMenuLandscape$8$1;->this$1:Lcom/elenco/snapcoder/fragments/FlyOutMenuLandscape$8;

    iget-object v1, v1, Lcom/elenco/snapcoder/fragments/FlyOutMenuLandscape$8;->val$view:Landroid/view/View;

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lcom/elenco/snapcoder/fragments/FlyOutMenuLandscape;->closeMenusBotCode(Landroid/view/View;Z)V

    .line 126
    return-void
.end method
