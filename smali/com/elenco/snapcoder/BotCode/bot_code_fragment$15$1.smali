.class Lcom/elenco/snapcoder/BotCode/bot_code_fragment$15$1;
.super Ljava/lang/Object;
.source "bot_code_fragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/elenco/snapcoder/BotCode/bot_code_fragment$15;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/elenco/snapcoder/BotCode/bot_code_fragment$15;


# direct methods
.method constructor <init>(Lcom/elenco/snapcoder/BotCode/bot_code_fragment$15;)V
    .locals 0
    .param p1, "this$1"    # Lcom/elenco/snapcoder/BotCode/bot_code_fragment$15;

    .prologue
    .line 436
    iput-object p1, p0, Lcom/elenco/snapcoder/BotCode/bot_code_fragment$15$1;->this$1:Lcom/elenco/snapcoder/BotCode/bot_code_fragment$15;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 439
    iget-object v2, p0, Lcom/elenco/snapcoder/BotCode/bot_code_fragment$15$1;->this$1:Lcom/elenco/snapcoder/BotCode/bot_code_fragment$15;

    iget-object v2, v2, Lcom/elenco/snapcoder/BotCode/bot_code_fragment$15;->this$0:Lcom/elenco/snapcoder/BotCode/bot_code_fragment;

    iget-object v2, v2, Lcom/elenco/snapcoder/BotCode/bot_code_fragment;->view:Landroid/view/View;

    const v3, 0x7f080104

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/support/constraint/Guideline;

    .line 440
    .local v0, "leftGuideline":Landroid/support/constraint/Guideline;
    iget-object v2, p0, Lcom/elenco/snapcoder/BotCode/bot_code_fragment$15$1;->this$1:Lcom/elenco/snapcoder/BotCode/bot_code_fragment$15;

    iget-object v2, v2, Lcom/elenco/snapcoder/BotCode/bot_code_fragment$15;->this$0:Lcom/elenco/snapcoder/BotCode/bot_code_fragment;

    iget-object v2, v2, Lcom/elenco/snapcoder/BotCode/bot_code_fragment;->view:Landroid/view/View;

    const v3, 0x7f08009e

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->getX()F

    move-result v2

    float-to-int v2, v2

    add-int/lit8 v2, v2, 0xf

    invoke-virtual {v0, v2}, Landroid/support/constraint/Guideline;->setGuidelineBegin(I)V

    .line 441
    iget-object v2, p0, Lcom/elenco/snapcoder/BotCode/bot_code_fragment$15$1;->this$1:Lcom/elenco/snapcoder/BotCode/bot_code_fragment$15;

    iget-object v2, v2, Lcom/elenco/snapcoder/BotCode/bot_code_fragment$15;->this$0:Lcom/elenco/snapcoder/BotCode/bot_code_fragment;

    iget-object v2, v2, Lcom/elenco/snapcoder/BotCode/bot_code_fragment;->view:Landroid/view/View;

    const v3, 0x7f080105

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/support/constraint/Guideline;

    .line 442
    .local v1, "rightGuideline":Landroid/support/constraint/Guideline;
    iget-object v2, p0, Lcom/elenco/snapcoder/BotCode/bot_code_fragment$15$1;->this$1:Lcom/elenco/snapcoder/BotCode/bot_code_fragment$15;

    iget-object v2, v2, Lcom/elenco/snapcoder/BotCode/bot_code_fragment$15;->this$0:Lcom/elenco/snapcoder/BotCode/bot_code_fragment;

    iget-object v2, v2, Lcom/elenco/snapcoder/BotCode/bot_code_fragment;->view:Landroid/view/View;

    const v3, 0x7f08009d

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->getX()F

    move-result v2

    float-to-int v2, v2

    invoke-virtual {v1, v2}, Landroid/support/constraint/Guideline;->setGuidelineBegin(I)V

    .line 446
    return-void
.end method
