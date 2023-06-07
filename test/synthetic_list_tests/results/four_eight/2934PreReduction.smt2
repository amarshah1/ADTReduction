
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
(assert (= l2 Nil) )
(assert (is-Cons Nil) )
(assert (= l3 Nil) )
(assert (or (= l0 Nil) (= l0 l0) (is-Cons Nil)) )
(assert (or (= l3 Nil) (= l1 Nil) (= l2 Nil) (= l2 Nil)) )
(assert (not (= l2 Nil)) )
(assert (or (= l1 Nil) (is-Cons Nil) (is-Cons Nil)) )
(assert (or (= l1 l3) (= l1 l0)) )
(check-sat)
