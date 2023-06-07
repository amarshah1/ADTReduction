
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
(assert (not (= l2 Nil)) )
(assert (or (= l3 l2) (= l3 l2)) )
(assert (or (= l0 Nil) (is-Cons Nil) (= l1 l1)) )
(assert (not (= l1 Nil)) )
(assert (not (= l3 Nil)) )
(assert (= l2 l0) )
(assert (is-Cons l3) )
(assert (is-Cons Nil) )
(check-sat)
