.class Lcom/elenco/snapcoder/fragments/NumberPickerFragment$infiniteonClickListener;
.super Ljava/lang/Object;
.source "NumberPickerFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/elenco/snapcoder/fragments/NumberPickerFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "infiniteonClickListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/elenco/snapcoder/fragments/NumberPickerFragment;


# direct methods
.method private constructor <init>(Lcom/elenco/snapcoder/fragments/NumberPickerFragment;)V
    .locals 0

    .prologue
    .line 216
    iput-object p1, p0, Lcom/elenco/snapcoder/fragments/NumberPickerFragment$infiniteonClickListener;->this$0:Lcom/elenco/snapcoder/fragments/NumberPickerFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/elenco/snapcoder/fragments/NumberPickerFragment;Lcom/elenco/snapcoder/fragments/NumberPickerFragment$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/elenco/snapcoder/fragments/NumberPickerFragment;
    .param p2, "x1"    # Lcom/elenco/snapcoder/fragments/NumberPickerFragment$1;

    .prologue
    .line 216
    invoke-direct {p0, p1}, Lcom/elenco/snapcoder/fragments/NumberPickerFragment$infiniteonClickListener;-><init>(Lcom/elenco/snapcoder/fragments/NumberPickerFragment;)V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 220
    iget-object v0, p0, Lcom/elenco/snapcoder/fragments/NumberPickerFragment$infiniteonClickListener;->this$0:Lcom/elenco/snapcoder/fragments/NumberPickerFragment;

    invoke-static {v0}, Lcom/elenco/snapcoder/fragments/NumberPickerFragment;->access$1200(Lcom/elenco/snapcoder/fragments/NumberPickerFragment;)Ljava/lang/String;

    move-result-object v0

    invoke-static {}, Ljava/text/DecimalFormatSymbols;->getInstance()Ljava/text/DecimalFormatSymbols;

    move-result-object v1

    invoke-virtual {v1}, Ljava/text/DecimalFormatSymbols;->getInfinity()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 221
    iget-object v0, p0, Lcom/elenco/snapcoder/fragments/NumberPickerFragment$infiniteonClickListener;->this$0:Lcom/elenco/snapcoder/fragments/NumberPickerFragment;

    invoke-static {}, Ljava/text/DecimalFormatSymbols;->getInstance()Ljava/text/DecimalFormatSymbols;

    move-result-object v1

    invoke-virtual {v1}, Ljava/text/DecimalFormatSymbols;->getInfinity()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/elenco/snapcoder/fragments/NumberPickerFragment;->access$1202(Lcom/elenco/snapcoder/fragments/NumberPickerFragment;Ljava/lang/String;)Ljava/lang/String;

    .line 223
    :cond_0
    iget-object v0, p0, Lcom/elenco/snapcoder/fragments/NumberPickerFragment$infiniteonClickListener;->this$0:Lcom/elenco/snapcoder/fragments/NumberPickerFragment;

    invoke-static {v0}, Lcom/elenco/snapcoder/fragments/NumberPickerFragment;->access$1300(Lcom/elenco/snapcoder/fragments/NumberPickerFragment;)Lcom/elenco/snapcoder/fragments/NumberPickerCallback;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 225
    iget-object v0, p0, Lcom/elenco/snapcoder/fragments/NumberPickerFragment$infiniteonClickListener;->this$0:Lcom/elenco/snapcoder/fragments/NumberPickerFragment;

    invoke-static {v0}, Lcom/elenco/snapcoder/fragments/NumberPickerFragment;->access$1300(Lcom/elenco/snapcoder/fragments/NumberPickerFragment;)Lcom/elenco/snapcoder/fragments/NumberPickerCallback;

    move-result-object v0

    iget-object v1, p0, Lcom/elenco/snapcoder/fragments/NumberPickerFragment$infiniteonClickListener;->this$0:Lcom/elenco/snapcoder/fragments/NumberPickerFragment;

    invoke-static {v1}, Lcom/elenco/snapcoder/fragments/NumberPickerFragment;->access$1200(Lcom/elenco/snapcoder/fragments/NumberPickerFragment;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/elenco/snapcoder/fragments/NumberPickerCallback;->onButtonPressed(Ljava/lang/String;)V

    .line 227
    :cond_1
    return-void
.end method
