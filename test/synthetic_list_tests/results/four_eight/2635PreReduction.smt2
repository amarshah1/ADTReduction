
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
(assert (or (= l0 Nil) (= l1 Nil) (= l2 Nil) (= l2 Nil)) )
(assert (= l3 l1) )
(assert (= l1 l2) )
(assert (is-Cons Nil) )
(assert (and (= l1 Nil) (= l2 Nil)) )
(assert (not (= l1 l1)) )
(assert (is-Cons Nil) )
(check-sat)
