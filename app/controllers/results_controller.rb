class ResultsController < ApplicationController
  before_action :set_result, only: [:show, :edit, :update, :destroy]

  # GET /results
  # GET /results.json
  def index
    # @results = Result.all
    @survey = Survey.where(id:params[:survey_id]).first
    @papers = Paper.where(survey_id:params[:survey_id])
    @ids = @papers.ids
    @results = Result.where(user_id:params[:user_id],paper_id:@ids)
    respond_to do |format|
      format.html
      format.csv { send_data @results.to_csv }
      format.xls #{ send_data @results.to_csv(col_sep: "\t") }
    end
  end

  # GET /results/1
  # GET /results/1.json
  def show
  end

  # GET /results/new
  def new
    @result = Result.new
  end

  # GET /results/1/edit
  def edit
  end

  # POST /results
  # POST /results.json
  def create
    @result = Result.new(result_params)

    respond_to do |format|
      if @result.save
        format.html { redirect_to @result, notice: 'Result was successfully created.' }
        format.json { render :show, status: :created, location: @result }
      else
        format.html { render :new }
        format.json { render json: @result.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /results/1
  # PATCH/PUT /results/1.json
  def update
    respond_to do |format|
      if @result.update(result_params)
        format.html { redirect_to @result, notice: 'Result was successfully updated.' }
        format.json { render :show, status: :ok, location: @result }
      else
        format.html { render :edit }
        format.json { render json: @result.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /results/1
  # DELETE /results/1.json
  def destroy
    @result.destroy
    respond_to do |format|
      format.html { redirect_to results_url, notice: 'Result was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_result
      @result = Result.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def result_params
      params.require(:result).permit(:one, :two, :three, :four, :five, :six, :seven, :eight, :night, :ten, :eleven, :twelve, :thirteen, :fourteen, :fifteen, :sixteen, :seventeen, :eighteen, :nighteen, :twenty, :twentyone, :twentytwo, :twentythree, :twentyfour, :twentyfive, :twentysix, :twentyseven, :twentyeight, :twentynine, :thirty, :thirtyone, :thirtytwo, :thirtythree, :thirtyfour, :thirtyfive, :thirtysix, :thirtyseven, :thirtyeight, :thirtynine, :fourty, :fourtyone, :fourtytwo, :fourtythree, :fourtyfour, :fourtyfive, :fourtysix, :fourtyseven, :fourtyeight, :fourtynine, :fifty, :paper_id)
    end


end
