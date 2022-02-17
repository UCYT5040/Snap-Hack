.class final Lcom/elenco/snapcoder/BotCode/BotCodeManager$2;
.super Ljava/lang/Object;
.source "BotCodeManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/elenco/snapcoder/BotCode/BotCodeManager;->setRowHighlight(Landroid/widget/LinearLayout;Lcom/elenco/snapcoder/BotCode/BotCommand;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$uiCommandList:Landroid/widget/LinearLayout;


# direct methods
.method constructor <init>(Landroid/widget/LinearLayout;)V
    .locals 0

    .prologue
    .line 315
    iput-object p1, p0, Lcom/elenco/snapcoder/BotCode/BotCodeManager$2;->val$uiCommandList:Landroid/widget/LinearLayout;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 318
    const/4 v0, 0x2

    .local v0, "n":I
    :goto_0
    iget-object v1, p0, Lcom/elenco/snapcoder/BotCode/BotCodeManager$2;->val$uiCommandList:Landroid/widget/LinearLayout;

    invoke-virtual {v1}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    if-ge v0, v1, :cond_0

    .line 319
    iget-object v1, p0, Lcom/elenco/snapcoder/BotCode/BotCodeManager$2;->val$uiCommandList:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    const v2, 0x7f080097

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 318
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 323
    :cond_0
    return-void
.end method
