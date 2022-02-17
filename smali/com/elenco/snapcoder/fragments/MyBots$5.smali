.class Lcom/elenco/snapcoder/fragments/MyBots$5;
.super Ljava/lang/Object;
.source "MyBots.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/elenco/snapcoder/fragments/MyBots;->getConnectedBotIconsForMyBotsScreenAfterCustomization(Ljava/lang/String;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/elenco/snapcoder/fragments/MyBots;

.field final synthetic val$b:Lcom/elenco/snapcoder/model/Bot;

.field final synthetic val$botColor:Ljava/lang/String;

.field final synthetic val$finalBotRowView:Landroid/view/View;


# direct methods
.method constructor <init>(Lcom/elenco/snapcoder/fragments/MyBots;Landroid/view/View;Lcom/elenco/snapcoder/model/Bot;Ljava/lang/String;)V
    .locals 0
    .param p1, "this$0"    # Lcom/elenco/snapcoder/fragments/MyBots;

    .prologue
    .line 332
    iput-object p1, p0, Lcom/elenco/snapcoder/fragments/MyBots$5;->this$0:Lcom/elenco/snapcoder/fragments/MyBots;

    iput-object p2, p0, Lcom/elenco/snapcoder/fragments/MyBots$5;->val$finalBotRowView:Landroid/view/View;

    iput-object p3, p0, Lcom/elenco/snapcoder/fragments/MyBots$5;->val$b:Lcom/elenco/snapcoder/model/Bot;

    iput-object p4, p0, Lcom/elenco/snapcoder/fragments/MyBots$5;->val$botColor:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 335
    iget-object v1, p0, Lcom/elenco/snapcoder/fragments/MyBots$5;->val$finalBotRowView:Landroid/view/View;

    const v2, 0x7f0801ef

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/elenco/snapcoder/AutoResizeTextView;

    .line 336
    .local v0, "snapName":Lcom/elenco/snapcoder/AutoResizeTextView;
    invoke-static {}, Lcom/elenco/snapcoder/UIManager;->getMainScreen()Lcom/elenco/snapcoder/MainScreen;

    move-result-object v1

    invoke-virtual {v0}, Lcom/elenco/snapcoder/AutoResizeTextView;->getText()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-interface {v2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/elenco/snapcoder/MainScreen;->nameOfBotToBeCustomized:Ljava/lang/String;

    .line 337
    invoke-static {}, Lcom/elenco/snapcoder/UIManager;->getMainScreen()Lcom/elenco/snapcoder/MainScreen;

    move-result-object v1

    iget-object v2, p0, Lcom/elenco/snapcoder/fragments/MyBots$5;->val$b:Lcom/elenco/snapcoder/model/Bot;

    invoke-virtual {v2}, Lcom/elenco/snapcoder/model/Bot;->getAddress()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/elenco/snapcoder/MainScreen;->addressOfBotToBeCustomized:Ljava/lang/String;

    .line 338
    invoke-static {}, Lcom/elenco/snapcoder/UIManager;->getMainScreen()Lcom/elenco/snapcoder/MainScreen;

    move-result-object v1

    iget-object v2, p0, Lcom/elenco/snapcoder/fragments/MyBots$5;->val$botColor:Ljava/lang/String;

    iput-object v2, v1, Lcom/elenco/snapcoder/MainScreen;->colorOfBotToBeCustomized:Ljava/lang/String;

    .line 339
    iget-object v1, p0, Lcom/elenco/snapcoder/fragments/MyBots$5;->this$0:Lcom/elenco/snapcoder/fragments/MyBots;

    iget-object v2, p0, Lcom/elenco/snapcoder/fragments/MyBots$5;->val$finalBotRowView:Landroid/view/View;

    invoke-virtual {v1, v2}, Lcom/elenco/snapcoder/fragments/MyBots;->OpenBotCustomization(Landroid/view/View;)V

    .line 340
    return-void
.end method
