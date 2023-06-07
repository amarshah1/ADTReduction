
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
(assert (is-Nil l1) )
(assert (not (= l1 Nil)) )
(assert (and (is-Cons Nil) (= l1 Nil) (= l3 Nil) (= l2 Nil)) )
(assert (not (is-Cons Nil)) )
(assert (not (= l0 Nil)) )
(assert (and (= l1 Nil) (= l3 l2) (= l3 Nil)) )
(assert (= l2 Nil) )
(assert (and (= l0 l2) (= l0 l3) (= l0 l1) (= l0 Nil)) )
(check-sat)
