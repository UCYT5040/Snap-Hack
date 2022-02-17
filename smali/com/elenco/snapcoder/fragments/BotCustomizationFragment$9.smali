.class Lcom/elenco/snapcoder/fragments/BotCustomizationFragment$9;
.super Ljava/lang/Object;
.source "BotCustomizationFragment.java"

# interfaces
.implements Landroid/view/View$OnFocusChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/elenco/snapcoder/fragments/BotCustomizationFragment;->OpenBotCustomization(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/elenco/snapcoder/fragments/BotCustomizationFragment;


# direct methods
.method constructor <init>(Lcom/elenco/snapcoder/fragments/BotCustomizationFragment;)V
    .locals 0
    .param p1, "this$0"    # Lcom/elenco/snapcoder/fragments/BotCustomizationFragment;

    .prologue
    .line 446
    iput-object p1, p0, Lcom/elenco/snapcoder/fragments/BotCustomizationFragment$9;->this$0:Lcom/elenco/snapcoder/fragments/BotCustomizationFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFocusChange(Landroid/view/View;Z)V
    .locals 1
    .param p1, "v"    # Landroid/view/View;
    .param p2, "hasFocus"    # Z

    .prologue
    .line 449
    if-nez p2, :cond_0

    .line 450
    iget-object v0, p0, Lcom/elenco/snapcoder/fragments/BotCustomizationFragment$9;->this$0:Lcom/elenco/snapcoder/fragments/BotCustomizationFragment;

    invoke-virtual {v0, p1}, Lcom/elenco/snapcoder/fragments/BotCustomizationFragment;->hideKeyboard(Landroid/view/View;)V

    .line 452
    :cond_0
    return-void
.end method
