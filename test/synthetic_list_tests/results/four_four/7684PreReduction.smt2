
(set-logic ALL) 

(declare-datatypes ((MyList 0)) (
    (
      (Nil)
      (Cons (Head Real) (Tail MyList))
    )
)) 
(declare-fun l0 () MyList) 
(declare-fun l1 () MyList) 
(declare-fun l2 () MyList) 
(declare-fun l3 () MyList) 
(declare-fun i0 () Real) 
(declare-fun i1 () Real) 
(assert (and (= l3 l1) (= l0 Nil) (= l1 Nil) (is-Cons Nil)) )
(assert (= l2 Nil) )
(assert (and (= l3 l0) (is-Cons Nil) (= l1 Nil) (is-Cons Nil)) )
(assert (or (is-Cons Nil) (= l3 Nil)) )
(check-sat)
