
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
(assert (is-Cons Nil) )
(assert (and (= l1 l0) (is-Cons Nil) (is-Cons Nil)) )
(assert (not (= l1 l0)) )
(assert (or (= l3 Nil) (= l3 Nil) (= l3 l1) (is-Cons l2)) )
(check-sat)
