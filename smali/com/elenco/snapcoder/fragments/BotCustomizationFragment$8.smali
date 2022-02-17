.class Lcom/elenco/snapcoder/fragments/BotCustomizationFragment$8;
.super Ljava/lang/Object;
.source "BotCustomizationFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/elenco/snapcoder/fragments/BotCustomizationFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/elenco/snapcoder/fragments/BotCustomizationFragment;

.field final synthetic val$instructionView:Landroid/widget/RelativeLayout;


# direct methods
.method constructor <init>(Lcom/elenco/snapcoder/fragments/BotCustomizationFragment;Landroid/widget/RelativeLayout;)V
    .locals 0
    .param p1, "this$0"    # Lcom/elenco/snapcoder/fragments/BotCustomizationFragment;

    .prologue
    .line 163
    iput-object p1, p0, Lcom/elenco/snapcoder/fragments/BotCustomizationFragment$8;->this$0:Lcom/elenco/snapcoder/fragments/BotCustomizationFragment;

    iput-object p2, p0, Lcom/elenco/snapcoder/fragments/BotCustomizationFragment$8;->val$instructionView:Landroid/widget/RelativeLayout;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 166
    invoke-static {}, Lcom/elenco/snapcoder/UIManager;->getMainScreen()Lcom/elenco/snapcoder/MainScreen;

    move-result-object v1

    const v2, 0x7f0801f0

    invoke-virtual {v1, v2}, Lcom/elenco/snapcoder/MainScreen;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    .line 167
    .local v0, "snapNameText":Landroid/widget/EditText;
    invoke-virtual {v0}, Landroid/widget/EditText;->clearFocus()V

    .line 168
    iget-object v1, p0, Lcom/elenco/snapcoder/fragments/BotCustomizationFragment$8;->this$0:Lcom/elenco/snapcoder/fragments/BotCustomizationFragment;

    iget-object v2, p0, Lcom/elenco/snapcoder/fragments/BotCustomizationFragment$8;->this$0:Lcom/elenco/snapcoder/fragments/BotCustomizationFragment;

    iget-object v2, v2, Lcom/elenco/snapcoder/fragments/BotCustomizationFragment;->view:Landroid/view/View;

    invoke-virtual {v1, v2}, Lcom/elenco/snapcoder/fragments/BotCustomizationFragment;->hideKeyboard(Landroid/view/View;)V

    .line 169
    iget-object v1, p0, Lcom/elenco/snapcoder/fragments/BotCustomizationFragment$8;->val$instructionView:Landroid/widget/RelativeLayout;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 170
    return-void
.end method
