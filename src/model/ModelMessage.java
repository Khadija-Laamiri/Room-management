package model;

public class ModelMessage {

    /**
     * @return the success
     */
    public boolean isSuccess() {
        return success;
    }

    /**
     * @param success the success to set
     */
    public void setSuccess(boolean success) {
        this.success = success;
    }

    /**
     * @return the message
     */
    public String getMessage() {
        return message;
    }

    /**
     * @param message the message to set
     */
    public void setMessage(String message) {
        this.message = message;
    }
    
    public ModelMessage(boolean success, String message){
        this.success=success;
        this.message=message;
    }

    
    public ModelMessage(){}
    private boolean success;
    private String message;
}
