.class Lcom/elenco/snapcoder/BotCode/bot_code_fragment$37;
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

.field final synthetic val$durationTextView:Lcom/elenco/snapcoder/AutoResizeTextView;


# direct methods
.method constructor <init>(Lcom/elenco/snapcoder/BotCode/bot_code_fragment;Lcom/elenco/snapcoder/AutoResizeTextView;)V
    .locals 0
    .param p1, "this$0"    # Lcom/elenco/snapcoder/BotCode/bot_code_fragment;

    .prologue
    .line 1157
    iput-object p1, p0, Lcom/elenco/snapcoder/BotCode/bot_code_fragment$37;->this$0:Lcom/elenco/snapcoder/BotCode/bot_code_fragment;

    iput-object p2, p0, Lcom/elenco/snapcoder/BotCode/bot_code_fragment$37;->val$durationTextView:Lcom/elenco/snapcoder/AutoResizeTextView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 1160
    iget-object v0, p0, Lcom/elenco/snapcoder/BotCode/bot_code_fragment$37;->this$0:Lcom/elenco/snapcoder/BotCode/bot_code_fragment;

    iget-object v1, p0, Lcom/elenco/snapcoder/BotCode/bot_code_fragment$37;->val$durationTextView:Lcom/elenco/snapcoder/AutoResizeTextView;

    invoke-virtual {v1}, Lcom/elenco/snapcoder/AutoResizeTextView;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/elenco/snapcoder/BotCode/bot_code_fragment;->access$700(Lcom/elenco/snapcoder/BotCode/bot_code_fragment;Ljava/lang/String;Z)V

    .line 1161
    iget-object v0, p0, Lcom/elenco/snapcoder/BotCode/bot_code_fragment$37;->val$durationTextView:Lcom/elenco/snapcoder/AutoResizeTextView;

    invoke-static {v0}, Lcom/elenco/snapcoder/UIManager;->setSelectedTextViewForChange(Lcom/elenco/snapcoder/AutoResizeTextView;)V

    .line 1162
    return-void
.end method
