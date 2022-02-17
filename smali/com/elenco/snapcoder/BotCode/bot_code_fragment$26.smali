.class Lcom/elenco/snapcoder/BotCode/bot_code_fragment$26;
.super Ljava/lang/Object;
.source "bot_code_fragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/elenco/snapcoder/BotCode/bot_code_fragment;->setUpCommandContainer(IIIZLjava/lang/String;I)Landroid/widget/LinearLayout;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/elenco/snapcoder/BotCode/bot_code_fragment;

.field final synthetic val$botText:Lcom/elenco/snapcoder/AutoResizeTextView;

.field final synthetic val$codeBay2:Landroid/widget/LinearLayout;

.field final synthetic val$commandContainer:Landroid/widget/LinearLayout;

.field final synthetic val$commandId:I

.field final synthetic val$editBotButton:Landroid/widget/ImageButton;

.field final synthetic val$speedImage:Landroid/widget/ImageView;


# direct methods
.method constructor <init>(Lcom/elenco/snapcoder/BotCode/bot_code_fragment;ILandroid/widget/LinearLayout;Landroid/widget/LinearLayout;Landroid/widget/ImageView;Landroid/widget/ImageButton;Lcom/elenco/snapcoder/AutoResizeTextView;)V
    .locals 0
    .param p1, "this$0"    # Lcom/elenco/snapcoder/BotCode/bot_code_fragment;

    .prologue
    .line 1011
    iput-object p1, p0, Lcom/elenco/snapcoder/BotCode/bot_code_fragment$26;->this$0:Lcom/elenco/snapcoder/BotCode/bot_code_fragment;

    iput p2, p0, Lcom/elenco/snapcoder/BotCode/bot_code_fragment$26;->val$commandId:I

    iput-object p3, p0, Lcom/elenco/snapcoder/BotCode/bot_code_fragment$26;->val$codeBay2:Landroid/widget/LinearLayout;

    iput-object p4, p0, Lcom/elenco/snapcoder/BotCode/bot_code_fragment$26;->val$commandContainer:Landroid/widget/LinearLayout;

    iput-object p5, p0, Lcom/elenco/snapcoder/BotCode/bot_code_fragment$26;->val$speedImage:Landroid/widget/ImageView;

    iput-object p6, p0, Lcom/elenco/snapcoder/BotCode/bot_code_fragment$26;->val$editBotButton:Landroid/widget/ImageButton;

    iput-object p7, p0, Lcom/elenco/snapcoder/BotCode/bot_code_fragment$26;->val$botText:Lcom/elenco/snapcoder/AutoResizeTextView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 1014
    iget-object v0, p0, Lcom/elenco/snapcoder/BotCode/bot_code_fragment$26;->this$0:Lcom/elenco/snapcoder/BotCode/bot_code_fragment;

    iget v1, p0, Lcom/elenco/snapcoder/BotCode/bot_code_fragment$26;->val$commandId:I

    iget-object v2, p0, Lcom/elenco/snapcoder/BotCode/bot_code_fragment$26;->val$codeBay2:Landroid/widget/LinearLayout;

    iget-object v3, p0, Lcom/elenco/snapcoder/BotCode/bot_code_fragment$26;->val$commandContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->indexOfChild(Landroid/view/View;)I

    move-result v2

    iget-object v3, p0, Lcom/elenco/snapcoder/BotCode/bot_code_fragment$26;->val$speedImage:Landroid/widget/ImageView;

    invoke-static {v0, v1, v2, v3}, Lcom/elenco/snapcoder/BotCode/bot_code_fragment;->access$600(Lcom/elenco/snapcoder/BotCode/bot_code_fragment;IILandroid/widget/ImageView;)V

    .line 1015
    iget-object v0, p0, Lcom/elenco/snapcoder/BotCode/bot_code_fragment$26;->val$speedImage:Landroid/widget/ImageView;

    invoke-static {v0}, Lcom/elenco/snapcoder/UIManager;->setSelectedSpeedImageForChange(Landroid/widget/ImageView;)V

    .line 1016
    iget-object v0, p0, Lcom/elenco/snapcoder/BotCode/bot_code_fragment$26;->val$editBotButton:Landroid/widget/ImageButton;

    invoke-static {v0}, Lcom/elenco/snapcoder/UIManager;->setSelectedBotImageForChange(Landroid/widget/ImageButton;)V

    .line 1017
    iget-object v0, p0, Lcom/elenco/snapcoder/BotCode/bot_code_fragment$26;->val$botText:Lcom/elenco/snapcoder/AutoResizeTextView;

    invoke-static {v0}, Lcom/elenco/snapcoder/UIManager;->setSelectedBotTextForChange(Lcom/elenco/snapcoder/AutoResizeTextView;)V

    .line 1018
    return-void
.end method
