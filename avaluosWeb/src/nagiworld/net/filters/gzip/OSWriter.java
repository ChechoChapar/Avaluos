package nagiworld.net.filters.gzip;

import java.io.Writer;
import java.io.IOException;
import java.io.OutputStream;
import java.io.UnsupportedEncodingException;

import java.nio.charset.Charset;
import java.nio.charset.CharsetEncoder;
import sun.nio.cs.StreamEncoder;
import sun.nio.*;


class OSWriter extends Writer {

  private final StreamEncoder se;
  //private final Writer se;

  public OSWriter(OutputStream out, String charsetName)
    throws UnsupportedEncodingException
  {
    super(out);
    if (charsetName == null) throw new NullPointerException("charsetName");
    se = StreamEncoder.forOutputStreamWriter(out, this, charsetName);
    //se = null;
  }

  public String getEncoding() {
    return se.getEncoding();
	//return null;
  }

  private void flushBuffer() throws IOException {
    se.flushBuffer();
  }


  public void write(char cbuf[], int off, int len) throws IOException {
    se.write(cbuf, off, len);
    flushBuffer();
  }

  public void write(int c) throws IOException {
    se.write(c);
    flushBuffer();
  }

  public void write(String str, int off, int len) throws IOException {
    se.write(str, off, len);
    flushBuffer();
  }

  public void flush() throws IOException {
    se.flush();
  }

  public void close() throws IOException {
    se.close();
  }

}
