import { describe, expect, it } from "vitest";
import { renderToStaticMarkup } from "react-dom/server";
import { indisli } from "./Markdown";

const html = (s: string) => renderToStaticMarkup(<>{indisli(s)}</>);

describe("indisli", () => {
  it("alt ve üst indis", () => {
    expect(html("A_x = 3")).toBe("A<sub>x</sub> = 3");
    expect(html("v_{0y} ve m/s^2")).toBe("v<sub>0y</sub> ve m/s<sup>2</sup>");
    expect(html("10^{-3}")).toBe("10<sup>-3</sup>");
  });
  it("boşluk çizgilerine dokunmaz", () => {
    expect(html("Cevap ____ olur")).toBe("Cevap ____ olur");
  });
});
